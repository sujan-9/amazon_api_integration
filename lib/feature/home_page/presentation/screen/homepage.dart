import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nipuna_app/app/config/routes/router.dart';
import 'package:nipuna_app/app/core/common_widgets/loader.dart';
import 'package:nipuna_app/app/core/common_widgets/text_widgets.dart';
import 'package:nipuna_app/app/core/constants/app_strings.dart';
import 'package:nipuna_app/app/core/constants/color_constants.dart';
import 'package:nipuna_app/app/core/utils/size_config.dart';
import 'package:nipuna_app/feature/home_page/presentation/provider/product_provider.dart';
import 'package:nipuna_app/feature/home_page/presentation/provider/state/product_state.dart';
import 'package:nipuna_app/feature/home_page/presentation/screen/widgets/filter_dialog.dart';
import 'package:nipuna_app/feature/home_page/presentation/screen/widgets/no_data_available.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  TextEditingController controller = TextEditingController();
  _onSearchChanged(String query) {
    if (query.isNotEmpty && query.length > 2) {
      ref
          .read(productNotifierProvider.notifier)
          .updateProductNameFilterParameter(query);
    }
    if (query.isEmpty) {
      ref.read(productNotifierProvider.notifier).resetSearching();
      ref.read(productNotifierProvider.notifier).fetchProducts();
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(productNotifierProvider);

    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      appBar: _appBar(state),
      body: RefreshIndicator(
        onRefresh: () async {
          await ref.read(productNotifierProvider.notifier).fetchAllProducts();
        },
        child: state.productState == ProductConcreteState.loading
            ? const CustomLoader()
            : _body(state: state),
      ),
    );
  }

  AppBar _appBar(ProductState state) {
    return AppBar(
        backgroundColor: ColorConstants.backgroundColor,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(SizeConfig.safeBlockVertical * 9),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildHeaderText(text: AppStrings.discover, fontSize: 24),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextField(
                          controller: controller,
                          onChanged: _onSearchChanged,
                          decoration: InputDecoration(
                            hintText: AppStrings.searchProduct,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32.0),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 2,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32.0),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 2,
                                )),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32.0),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 2,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32.0),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 2,
                                )),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.filter_list),
                        onPressed: () {
                          _showFilterDialog(context);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }

  Widget _body({required ProductState state}) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: state.product.isEmpty
            ? const NoDataAvailable()
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: NotificationListener<ScrollNotification>(
                      onNotification: (notification) {
                        if (notification is ScrollEndNotification &&
                            notification.metrics.extentAfter == 0) {
                          ref
                              .read(productNotifierProvider.notifier)
                              .fetchAllProducts();
                        }
                        return false;
                      },
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 16,
                                mainAxisSpacing: 16,
                                childAspectRatio: 0.75),
                        itemCount: state.product.length,
                        itemBuilder: (context, index) {
                          return productCard(
                            index: index,
                            state: state,
                            ref: ref,
                          );
                        },
                      ),
                    ),
                  ),
                  state.productState == ProductConcreteState.fetchingMore
                      ? Padding(
                          padding: EdgeInsets.only(
                              bottom: SizeConfig.safeBlockVertical * 10),
                          child: const CustomLoader(),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
      ),
    );
  }

  void _showFilterDialog(BuildContext context) {
    showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return const FilterDialog();
        });
  }
}

Widget productCard(
    {required int index, required ProductState state, required WidgetRef ref}) {
  return InkWell(
    onTap: () {
      AppRouter.router.push('/productDetailScreen');

      ref
          .read(productNotifierProvider.notifier)
          .selectProduct(state.product[index].asin);
    },
    child: Card(
      elevation: 4.0,
      color: ColorConstants.secondaryBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              // Product Photo
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                ),
                child: Image.network(
                  state.product[index].product_photo!,
                  fit: BoxFit.cover,
                  height: 120,
                  width: double.infinity,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildBodyText(state.product[index].product_title,
                    overflow: TextOverflow.ellipsis),
                const SizedBox(height: 4.0),
                // Product price
                buildBodyText(
                  state.product[index].product_price!,
                ),
                const SizedBox(height: 4.0),
                // Product rating
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 16.0,
                    ),
                    //   bui(, style: TextStyle(fontSize: 12.0)),
                    buildBodyText(state.product[index].product_star_rating)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
