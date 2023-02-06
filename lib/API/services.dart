import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:instacash/API/endpoints.dart';

import 'app_exceptions.dart';

class API {
  var dio = Dio();

  //GET
  Future<dynamic> get() async {
    var uri = Uri.parse(Endpoints.baseURL);
    try {
      var response = await dio
          .get(Endpoints.baseURL)
          .timeout(const Duration(seconds: Endpoints.connectionTimeout));
      return _processResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection', uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingException(
          'API not responded in time', uri.toString());
    }
  }

  //POST LOGIN
  Future<dynamic> loginUser(dynamic payloadObj) async {
    var uri = Uri.parse(Endpoints.baseURL + Endpoints.loginUser);
    var payload = json.encode(payloadObj);
    try {
      var response = await dio
          .post(Endpoints.baseURL + Endpoints.loginUser, data: payload)
          .timeout(const Duration(seconds: Endpoints.connectionTimeout));
      return _processResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection', uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingException(
          'API not responded in time', uri.toString());
    }
  }

  //DELETE
  //OTHER

  dynamic _processResponse(response) {
    switch (response.statusCode) {
      case 200:
      case 201:
        return response.data;
      case 400:
        throw BadRequestException(
            utf8.decode(response.bodyBytes), response.request!.url.toString());
      case 401:
      case 403:
        throw UnAuthorizedException(
            utf8.decode(response.bodyBytes), response.request!.url.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured with code : ${response.statusCode}',
            response.request!.url.toString());
    }
  }
}
