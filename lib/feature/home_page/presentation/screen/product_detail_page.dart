import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nipuna_app/app/core/common_widgets/loader.dart';
import 'package:nipuna_app/app/core/common_widgets/text_widgets.dart';
import 'package:nipuna_app/app/core/constants/app_strings.dart';
import 'package:nipuna_app/app/core/constants/color_constants.dart';
import 'package:nipuna_app/app/core/utils/size_config.dart';
import 'package:nipuna_app/feature/home_page/presentation/provider/product_provider.dart';
import 'package:nipuna_app/feature/home_page/presentation/provider/state/product_state.dart';
import 'package:nipuna_app/feature/home_page/presentation/screen/widgets/custom_divider.dart';
import 'package:nipuna_app/feature/home_page/presentation/screen/widgets/no_data_available.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductDetailPage extends ConsumerStatefulWidget {
  const ProductDetailPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProductDetailPageState();
}

class _ProductDetailPageState extends ConsumerState<ProductDetailPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      if (mounted) {
        final state = ref.watch(productNotifierProvider);
        ref
            .read(productNotifierProvider.notifier)
            .getProductDetail(productId: state.productId!);
      }
    });
  }

  CarouselController carouselController = CarouselController();
  int carouselIndex = 0;
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(productNotifierProvider);
    return Scaffold(
        backgroundColor: ColorConstants.backgroundColor,
        appBar: AppBar(
          backgroundColor: ColorConstants.backgroundColor,
          title: buildHeaderText(text: AppStrings.productDetail, fontSize: 16),
          leading: IconButton(
              onPressed: () {
                ref.read(productNotifierProvider.notifier).clearProductDetail();
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new_rounded)),
        ),
        body: state.isLoading
            ? const CustomLoader()
            : productDetail(state: state));
  }

  Widget productDetail({required ProductState state}) {
    final String description = state.productDetail?.product_description ?? '';
    return state.productDetail == null
        ? const NoDataAvailable()
        : SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                imageCarousel(state: state),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      border: Border.all(color: ColorConstants.grey, width: 2),
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildHeaderText(
                        fontSize: 16,
                        text: state.productDetail?.product_title ?? 'no data',
                      ),
                      const CustomDivider(),
                      const SizedBox(height: 8),
                      buildHeaderText(
                        text: AppStrings.description,
                        fontSize: 16,
                        maxLines: 2,
                        textOverflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
                      AnimatedSize(
                        duration: const Duration(milliseconds: 200),
                        child: ConstrainedBox(
                          constraints: _isExpanded
                              ? const BoxConstraints()
                              : const BoxConstraints(maxHeight: 40),
                          child: buildBodyText(
                            description,
                          ),
                        ),
                      ),
                      state.productDetail!.product_description == null
                          ? buildBodyText(AppStrings.noDataAvailable)
                          : TextButton(
                              onPressed: () {
                                setState(() {
                                  _isExpanded = !_isExpanded;
                                });
                              },
                              child: buildBodyText(_isExpanded
                                  ? AppStrings.showLess
                                  : AppStrings.showMore),
                            ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildHeaderText(
                              text:
                                  '\$ ${state.productDetail?.product_price} ' ??
                                      '',
                              fontSize: 16),
                          Text(
                            ' ${state.productDetail?.product_original_price ?? ''}',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                buildHeaderText(text: AppStrings.reviews, fontSize: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16.0,
                        ),
                        buildBodyText(
                            state.productDetail?.product_star_rating ?? '')
                      ],
                    ),
                    buildBodyText(
                        state.productDetail?.product_num_ratings.toString() ??
                            '')
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                _productAvailability(state: state),
                const CustomDivider(),
                const SizedBox(
                  height: 12,
                ),
                state.productDetail?.about_product != null
                    ? _productInformation(state: state)
                    : const SizedBox.shrink(),
                const SizedBox(
                  height: 12,
                ),
                state.productDetail?.about_product != null
                    ? _aboutProduct(state: state)
                    : const SizedBox.shrink(),
                const SizedBox(
                  height: 12,
                ),
                _productUrl(state: state)
              ],
            ),
          );
  }

  Widget _productUrl({required ProductState state}) {
    final productUrl = state.productDetail?.product_url;
    return InkWell(
      onTap: () async {
        if (productUrl != null && productUrl.isNotEmpty) {
          final Uri url = Uri.parse(productUrl);

          if (await canLaunchUrl(url)) {
            await launchUrl(
              url,
              mode: LaunchMode.externalApplication,
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: buildBodyText(AppStrings.urlError)),
            );
          }
        }
      },
      child: buildHeaderText(
          text: state.productDetail?.product_url ?? '', fontSize: 14),
    );
  }

  Widget imageCarousel({required ProductState state}) {
    if (state.productDetail?.product_photos == null ||
        state.productDetail!.product_photos!.isEmpty) {
      return Center(child: buildBodyText(AppStrings.noDataAvailable));
    }

    return SizedBox(
      height: SizeConfig.safeBlockVertical * 25,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: CarouselSlider.builder(
              itemCount: state.productDetail!.product_photos!.length,
              itemBuilder: (context, index, realIndex) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.network(
                      state.productDetail!.product_photos![index],
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Center(
                          child: buildBodyText(AppStrings.noDataAvailable)),
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (i, reason) {
                  setState(() {
                    carouselIndex = i;
                  });
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: AnimatedSmoothIndicator(
                activeIndex: carouselIndex,
                count: state.productDetail!.product_photos!.length,
                effect: const WormEffect(
                  radius: 4.0,
                  dotWidth: 8.0,
                  dotHeight: 8.0,
                  dotColor: ColorConstants.grey,
                  activeDotColor: ColorConstants.primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _productInformation({required ProductState state}) {
  return Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      border: Border.all(color: ColorConstants.grey, width: 2),
      borderRadius: BorderRadius.circular(16),
    ),
    child: ExpansionTile(
      title: buildHeaderText(text: AppStrings.productInfo, fontSize: 16),
      children: state.productDetail!.product_information.entries.map((entry) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: buildBodyText(
                  '${entry.key}:',
                ),
              ),
              Expanded(
                flex: 2,
                child: buildBodyText(entry.value),
              ),
            ],
          ),
        );
      }).toList(),
    ),
  );
}

Widget _productAvailability({required ProductState state}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildHeaderText(text: AppStrings.productAvailability, fontSize: 16),
      buildBodyText(state.productDetail!.product_availability ?? '')
    ],
  );
}

Widget _aboutProduct({required ProductState state}) {
  return Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      border: Border.all(color: ColorConstants.grey, width: 2),
      borderRadius: BorderRadius.circular(16),
    ),
    child: ExpansionTile(
      title: buildHeaderText(text: AppStrings.aboutProduct, fontSize: 16),
      children: state.productDetail!.about_product!
          .map((description) => Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.circle, size: 8), // Bullet point
                    const SizedBox(width: 8), // Spacing between bullet and text
                    Expanded(
                      child: buildBodyText(
                        description,
                      ),
                    ),
                  ],
                ),
              ))
          .toList(),
    ),
  );
}
