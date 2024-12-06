import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nipuna_app/app/core/constants/api_constant.dart';
import 'package:nipuna_app/shared/data/remote/dio_network_service.dart';

final networkServiceProvider = Provider<DioNetworkService>(
  (ref) {
    final Dio dio = Dio();
    return DioNetworkService(dio, ApiConstants.apiUrl, ref);
  },
);
