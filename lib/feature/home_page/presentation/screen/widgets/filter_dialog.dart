import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nipuna_app/app/core/common_widgets/text_widgets.dart';
import 'package:nipuna_app/app/core/constants/app_strings.dart';
import 'package:nipuna_app/app/core/constants/color_constants.dart';
import 'package:nipuna_app/app/core/constants/path_constant.dart';
import 'package:nipuna_app/app/core/utils/size_config.dart';
import 'package:nipuna_app/feature/home_page/presentation/provider/product_provider.dart';

class FilterDialog extends ConsumerStatefulWidget {
  const FilterDialog({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FilterDialogState();
}

class _FilterDialogState extends ConsumerState<FilterDialog> {
  int selectedIndex = 0;
  List<String> filter = ['Higher to Lower', 'Lower to Higher'];
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(productNotifierProvider);
    final notifier = ref.watch(productNotifierProvider.notifier);
    return Dialog(
      backgroundColor: ColorConstants.backgroundColor,
      //   insetPadding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildHeaderText(
                  text: AppStrings.filterBy,
                  fontSize: SizeConfig.safeBlockHorizontal * 5.5,
                ),
                InkWell(
                  customBorder: const CircleBorder(),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: SvgPicture.asset(PathConstants.iconClose),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: ColorConstants.primaryColor.withOpacity(0.24),
          ),
          Container(
              constraints:
                  BoxConstraints(maxHeight: SizeConfig.safeBlockVertical * 25),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      notifier.selectFilter(
                        filter: 'HIGHEST_PRICE',
                      );
                      notifier.fetchAllProducts();
                      Navigator.pop(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildHeaderText(text: filter[0], fontSize: 16),
                        state.filter == 'HIGHEST_PRICE'
                            ? Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: SvgPicture.asset(PathConstants.iconDone),
                              )
                            : const SizedBox.shrink()
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  InkWell(
                    onTap: () {
                      notifier.selectFilter(
                        filter: 'LOWEST_PRICE',
                      );
                      notifier.fetchAllProducts();
                      Navigator.pop(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildHeaderText(text: filter[1], fontSize: 16),
                        state.filter == 'LOWEST_PRICE'
                            ? Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: SvgPicture.asset(PathConstants.iconDone),
                              )
                            : const SizedBox.shrink()
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
