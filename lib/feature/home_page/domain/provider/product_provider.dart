import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nipuna_app/feature/home_page/data/dataSource/product_remote_datasource.dart';
import 'package:nipuna_app/feature/home_page/data/repositories/product_repository_impl.dart';
import 'package:nipuna_app/feature/home_page/domain/repositories/product_repository.dart';
import 'package:nipuna_app/shared/data/remote/network_service.dart';

import '../../../../shared/domain/providers/dio_network_service_provider.dart';

final productProvider = Provider.family<ProductDataSource, NetworkService>(
  (_, networkService) => ProductRemoteDataSource(networkService),
);

final productRepositoryProvider = Provider<ProductRepository>(
  (ref) {
    final NetworkService networkService = ref.watch(networkServiceProvider);
    final ProductDataSource dataSource =
        ref.watch(productProvider(networkService));
    return ProductRepositoryImpl(dataSource);
  },
);
