import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:mime/mime.dart' as mime;

import 'package:authentication_template/utils/exceptions.dart';

abstract class HttpProvider<T> {
  void setPersistentHeaders({
    required final Map<String, dynamic> headers,
  });
  Future<T> get(
    final String path, {
    final Map<String, dynamic>? queryParameters,
    final dynamic options,
  });
  Future<T> post(
    final String path, {
    final Map<String, dynamic>? queryParameters,
    final dynamic data,
  });
  Future<T> put(
    final String path, {
    final Map<String, dynamic>? queryParameters,
    final dynamic data,
  });
  Future<T> delete(
    final String path, {
    final Map<String, dynamic>? queryParameters,
    final dynamic data,
  });

  Future<T> uploadFile(
    final String path, {
    required final File file,
  });
}

/// dio HTTP client provider
///
/// example of data:
/// * baseUrl: '${MusoConfig.musoApiHost}/api/m'
/// * connectTimeout: 60000
/// * receiveTimeout: 60000
/// * contentType: 'application/json'
class DioProvider implements HttpProvider<Response<dynamic>> {
  late Dio _dio;

  DioProvider({
    String baseUrl = '',
    int connectTimeout = 60000,
    int receiveTimeout = 60000,
    String? contentType,
    Map<String, dynamic>? headers,
    List<Interceptor> interceptors = const [],
  }) : _dio = Dio(
          BaseOptions(
            baseUrl: baseUrl,
            connectTimeout: connectTimeout,
            receiveTimeout: receiveTimeout,
            contentType: contentType,
            headers: headers,
          ),
        )..interceptors.addAll(interceptors);

  @override
  void setPersistentHeaders({
    required final Map<String, dynamic> headers,
  }) {
    _dio.options.headers = headers;
  }

  @override
  Future<Response<dynamic>> get(
    final String path, {
    final Map<String, dynamic>? queryParameters,
    final dynamic options,
  }) async {
    try {
      Response<dynamic> response = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
      );
      if (response.statusCode != null &&
          response.statusCode! >= 200 &&
          response.statusCode! < 300) {
        return response;
      }
      throw NetworkException.fromDioResponse(response);
    } on DioError catch (error) {
      throw NetworkException.fromDioError(error);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Response<dynamic>> post(
    final String path, {
    final Map<String, dynamic>? queryParameters,
    final dynamic data,
    final Options? options,
  }) async {
    try {
      Response<dynamic> response = await _dio.post(
        path,
        queryParameters: queryParameters,
        data: data,
        options: options,
      );
      if (response.statusCode != null &&
          response.statusCode! >= 200 &&
          response.statusCode! < 300) {
        return response;
      }
      throw NetworkException.fromDioResponse(response);
    } on DioError catch (error) {
      throw NetworkException.fromDioError(error);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Response<dynamic>> put(
    final String path, {
    final Map<String, dynamic>? queryParameters,
    final dynamic data,
  }) async {
    try {
      Response<dynamic> response = await _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      if (response.statusCode != null &&
          response.statusCode! >= 200 &&
          response.statusCode! < 300) {
        return response;
      }
      throw NetworkException.fromDioResponse(response);
    } on DioError catch (error) {
      throw NetworkException.fromDioError(error);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Response<dynamic>> delete(
    final String path, {
    final Map<String, dynamic>? queryParameters,
    final dynamic data,
  }) async {
    try {
      Response<dynamic> response = await _dio.delete(
        path,
        queryParameters: queryParameters,
        data: data,
      );
      if (response.statusCode != null &&
          response.statusCode! >= 200 &&
          response.statusCode! < 300) {
        return response;
      }
      throw NetworkException.fromDioResponse(response);
    } on DioError catch (error) {
      throw NetworkException.fromDioError(error);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Response<dynamic>> uploadFile(
    final String path, {
    required final File file,
  }) async {
    try {
      final mimeType = mime.lookupMimeType(file.path);
      Uint8List image = file.readAsBytesSync();
      Response<dynamic> response = await _dio.put(
        path,
        options: Options(
          headers: {
            if (mimeType != null) 'Content-Type': mimeType,
            'Accept': '*/*',
            'Content-Length': file.lengthSync().toString(),
            'Connection': 'keep-alive',
          },
        ),
        data: Stream.fromIterable(image.map((element) => [element])),
      );
      if (response.statusCode != null &&
          response.statusCode! >= 200 &&
          response.statusCode! < 300) {
        return response;
      }
      throw NetworkException.fromDioResponse(response);
    } on DioError catch (error) {
      throw NetworkException.fromDioError(error);
    } catch (e) {
      rethrow;
    }
  }
}

/// This is implementation of worked http client
/// for testing reasons with hardcoded delay [_durationInSeconds]
class DelayedIHttpProvider extends DioProvider {
  static const int _durationInSeconds = 5;

  DelayedIHttpProvider({
    String baseUrl = '',
    int connectTimeout = 60000,
    int receiveTimeout = 60000,
    String? contentType,
    Map<String, dynamic>? headers,
    List<Interceptor> interceptors = const [],
  }) : super(
          baseUrl: baseUrl,
          connectTimeout: connectTimeout,
          receiveTimeout: receiveTimeout,
          contentType: contentType,
          headers: headers,
          interceptors: interceptors,
        );

  @override
  Future<Response<dynamic>> get(
    final String path, {
    final Map<String, dynamic>? queryParameters,
    final dynamic options,
  }) async {
    return await Future.delayed(
      const Duration(seconds: _durationInSeconds),
      () async {
        return await super.get(
          path,
          queryParameters: queryParameters,
          options: options,
        );
      },
    );
  }

  @override
  Future<Response<dynamic>> post(
    final String path, {
    final Map<String, dynamic>? queryParameters,
    final dynamic data,
    final Options? options,
  }) async {
    try {
      return await Future.delayed(
        const Duration(seconds: _durationInSeconds),
        () async {
          Response<dynamic> response = await _dio.post(
            path,
            queryParameters: queryParameters,
            data: data,
            options: options,
          );
          if (response.statusCode != null &&
              response.statusCode! >= 200 &&
              response.statusCode! < 300) {
            return response;
          }
          throw NetworkException.fromDioResponse(response);
        },
      );
    } on DioError catch (error) {
      throw NetworkException.fromDioError(error);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Response<dynamic>> put(
    final String path, {
    final Map<String, dynamic>? queryParameters,
    final dynamic data,
  }) async {
    return await Future.delayed(
      const Duration(seconds: _durationInSeconds),
      () async {
        return await super.put(
          path,
          queryParameters: queryParameters,
          data: data,
        );
      },
    );
  }

  @override
  Future<Response<dynamic>> delete(
    final String path, {
    final Map<String, dynamic>? queryParameters,
    final dynamic data,
  }) async {
    return await Future.delayed(
      const Duration(seconds: _durationInSeconds),
      () async {
        return await super.delete(
          path,
          queryParameters: queryParameters,
          data: data,
        );
      },
    );
  }

  @override
  Future<Response<dynamic>> uploadFile(
    final String path, {
    required final File file,
  }) async {
    return await Future.delayed(
      const Duration(seconds: _durationInSeconds),
      () async {
        return await super.uploadFile(
          path,
          file: file,
        );
      },
    );
  }
}
