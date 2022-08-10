import 'package:flutter/foundation.dart';
import 'package:utilities/utilities.dart';

Future<void> request(
  final String url,
  final EHttpMethod httpMethod,
  final Function(Response<dynamic> response) action,
  final Function(Response<dynamic> response) error, {
  final String? queryOrMutation,
  final dynamic body,
  final bool encodeBody = true,
  final Map<String, String>? headers,
  final String userAgent = 'SinaMN75',
  final bool followRedirects = true,
  final Duration timeout = const Duration(minutes: 60),
  final int maxRedirects = 5,
  final bool allowAutoSignedCert = false,
  final bool sendUserAgent = false,
  final int maxAuthRetries = 1,
  final bool withCredentials = false,
}) async {
  final Map<String, String> header = <String, String>{"Authorization": getString(UtilitiesConstants.token) ?? ""};

  if (headers != null) header.addAll(headers);

  Response<dynamic> response = Response<dynamic>();
  try {
    dynamic params;
    if (body != null) {
      if (encodeBody)
        params = body.toJson();
      else
        params = body;
    }

    var connect = GetConnect(
      userAgent: userAgent,
      followRedirects: followRedirects,
      timeout: timeout,
      maxRedirects: maxRedirects,
      allowAutoSignedCert: allowAutoSignedCert,
      sendUserAgent: sendUserAgent,
      maxAuthRetries: maxAuthRetries,
      withCredentials: withCredentials,
    );

    if (httpMethod == EHttpMethod.get) response = await connect.get(url, headers: header);
    if (httpMethod == EHttpMethod.post) response = await connect.post(url, params, headers: header);
    if (httpMethod == EHttpMethod.put) response = await connect.put(url, params, headers: header);
    if (httpMethod == EHttpMethod.patch) response = await connect.patch(url, params, headers: header);
    if (httpMethod == EHttpMethod.delete) response = await connect.delete(url, headers: header);
  } catch (e) {
    error(response);
  }

  if (kDebugMode)
    delay(
      100,
      () => response.log(params: (body == null || !encodeBody) ? "" : body.toJson()),
    );

  if (response.isSuccessful())
    action(response);
  else
    error(response);
}

Future<void> httpGet({
  required String url,
  required action(Response response),
  required error(Response response),
  Map<String, String>? headers,
  final String userAgent = 'SinaMN75',
  final bool followRedirects = true,
  final Duration timeout = const Duration(minutes: 60),
  final int maxRedirects = 5,
  final bool allowAutoSignedCert = false,
  final bool sendUserAgent = false,
  final int maxAuthRetries = 1,
  final bool withCredentials = false,
}) async =>
    await request(
      url,
      EHttpMethod.get,
      action,
      error,
      headers: headers,
      userAgent: userAgent,
      followRedirects: followRedirects,
      timeout: timeout,
      maxRedirects: maxRedirects,
      allowAutoSignedCert: allowAutoSignedCert,
      sendUserAgent: sendUserAgent,
      maxAuthRetries: maxAuthRetries,
      withCredentials: withCredentials,
    );

Future<void> httpPost({
  required String url,
  required action(Response response),
  required error(Response response),
  Map<String, String>? headers,
  dynamic body,
  bool encodeBody = true,
  final String userAgent = 'SinaMN75',
  final bool followRedirects = true,
  final Duration timeout = const Duration(minutes: 60),
  final int maxRedirects = 5,
  final bool allowAutoSignedCert = false,
  final bool sendUserAgent = false,
  final int maxAuthRetries = 1,
  final bool withCredentials = false,
}) async =>
    await request(
      url,
      EHttpMethod.post,
      action,
      error,
      body: body,
      encodeBody: encodeBody,
      headers: headers,
      userAgent: userAgent,
      followRedirects: followRedirects,
      timeout: timeout,
      maxRedirects: maxRedirects,
      allowAutoSignedCert: allowAutoSignedCert,
      sendUserAgent: sendUserAgent,
      maxAuthRetries: maxAuthRetries,
      withCredentials: withCredentials,
    );

Future<void> httpPut({
  required String url,
  required action(Response response),
  required error(Response response),
  Map<String, String>? headers,
  dynamic body,
  bool encodeBody = true,
  final String userAgent = 'SinaMN75',
  final bool followRedirects = true,
  final Duration timeout = const Duration(minutes: 60),
  final int maxRedirects = 5,
  final bool allowAutoSignedCert = false,
  final bool sendUserAgent = false,
  final int maxAuthRetries = 1,
  final bool withCredentials = false,
}) async =>
    await request(
      url,
      EHttpMethod.put,
      action,
      error,
      body: body,
      encodeBody: encodeBody,
      headers: headers,
      userAgent: userAgent,
      followRedirects: followRedirects,
      timeout: timeout,
      maxRedirects: maxRedirects,
      allowAutoSignedCert: allowAutoSignedCert,
      sendUserAgent: sendUserAgent,
      maxAuthRetries: maxAuthRetries,
      withCredentials: withCredentials,
    );

Future<void> patch({
  required String url,
  required action(Response response),
  required error(Response response),
  Map<String, String>? headers,
  dynamic body,
  bool encodeBody = true,
  final String userAgent = 'SinaMN75',
  final bool followRedirects = true,
  final Duration timeout = const Duration(minutes: 60),
  final int maxRedirects = 5,
  final bool allowAutoSignedCert = false,
  final bool sendUserAgent = false,
  final int maxAuthRetries = 1,
  final bool withCredentials = false,
}) async =>
    await request(
      url,
      EHttpMethod.patch,
      action,
      error,
      body: body,
      encodeBody: encodeBody,
      headers: headers,
      userAgent: userAgent,
      followRedirects: followRedirects,
      timeout: timeout,
      maxRedirects: maxRedirects,
      allowAutoSignedCert: allowAutoSignedCert,
      sendUserAgent: sendUserAgent,
      maxAuthRetries: maxAuthRetries,
      withCredentials: withCredentials,
    );

Future<void> httpDelete({
  required String url,
  required action(Response response),
  required error(Response response),
  Map<String, String>? headers,
  final String userAgent = 'SinaMN75',
  final bool followRedirects = true,
  final Duration timeout = const Duration(minutes: 60),
  final int maxRedirects = 5,
  final bool allowAutoSignedCert = false,
  final bool sendUserAgent = false,
  final int maxAuthRetries = 1,
  final bool withCredentials = false,
}) async =>
    await request(
      url,
      EHttpMethod.delete,
      action,
      error,
      headers: headers,
      userAgent: userAgent,
      followRedirects: followRedirects,
      timeout: timeout,
      maxRedirects: maxRedirects,
      allowAutoSignedCert: allowAutoSignedCert,
      sendUserAgent: sendUserAgent,
      maxAuthRetries: maxAuthRetries,
      withCredentials: withCredentials,
    );

enum EHttpMethod { get, post, put, patch, delete }

extension HTTP on Response {
  bool isSuccessful() => (statusCode ?? 0) >= 200 && (statusCode ?? 0) <= 299 ? true : false;

  bool isServerError() => (statusCode ?? 0) >= 500 && (statusCode ?? 0) <= 599 ? true : false;

  void log({final String params = ""}) {
    logger.i(
      "${this.request?.method} - ${this.request?.url} - $statusCode \nPARAMS: $params \nRESPONSE: $body",
    );
  }

  void prettyLog({final String params = ""}) {
    logger.i(
      "${this.request?.method} - ${this.request?.url} - $statusCode \nPARAMS: ${JsonEncoder.withIndent(" ").convert(params)} \nRESPONSE: ${JsonEncoder.withIndent(" ").convert(body)}",
    );
  }
}
