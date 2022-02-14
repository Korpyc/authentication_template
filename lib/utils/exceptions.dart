import 'package:dio/dio.dart';

class CustomAppException implements Exception {
  String message;
  CustomAppException(this.message);
  @override
  String toString() {
    return message;
  }
}

class NetworkException implements Exception {
  final String? status;
  final int? code;
  final String message;

  // optional parameters
  final dynamic requestOptions;
  final dynamic responce;
  final StackTrace? stackTrace;

  NetworkException({
    required this.message,
    this.code,
    this.status,
    this.requestOptions,
    this.responce,
    this.stackTrace,
  });

  factory NetworkException.fromDioResponse(Response<dynamic> response) {
    return NetworkException(
      message: response.data?['message'] ?? 'Something goes wrong',
      code: response.statusCode,
      status: response.statusMessage,
      responce: response,
      requestOptions: response.requestOptions,
    );
  }

  factory NetworkException.fromDioError(DioError error) {
    return NetworkException(
      message: error.response?.data?['message'] ?? error.message,
      code: error.response?.data?['code'] ?? error.response?.statusCode,
      status: error.response?.data?['result'] ??
          error.response?.data?['status'] ??
          error.response?.statusMessage,
      requestOptions: error.requestOptions,
      responce: error.response,
      stackTrace: error.stackTrace,
    );
  }

  @override
  String toString() {
    return "Status: $status, code: $code, message: $message, stackTrace: $stackTrace, requestOptions: $requestOptions, responce: $responce";
  }
}
