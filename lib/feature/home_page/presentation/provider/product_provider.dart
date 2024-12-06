import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nipuna_app/feature/home_page/domain/provider/product_provider.dart';
import 'package:nipuna_app/feature/home_page/presentation/provider/state/product_notifier.dart';
import 'package:nipuna_app/feature/home_page/presentation/provider/state/product_state.dart';

final productNotifierProvider =
    StateNotifierProvider<ProductNotifier, ProductState>((ref) {
  final profileRepository = ref.watch(productRepositoryProvider);

  return ProductNotifier(profileRepository)..fetchAllProducts();
});
