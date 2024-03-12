import 'dart:io';

import 'package:dio/dio.dart';

abstract class Faliures {
  final String errMessage;

  Faliures(this.errMessage);
}

class ServerFailures extends Faliures {
  ServerFailures(super.errMessage);
  factory ServerFailures.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailures('Connection Timeout Faliures');
      case DioExceptionType.sendTimeout:
        return ServerFailures('Send Timeout Faliures');
      case DioExceptionType.receiveTimeout:
        return ServerFailures('Receive Timeout Faliures');
      case DioExceptionType.badCertificate:
        return ServerFailures("Bad Certificate");
      case DioExceptionType.badResponse:
        return ServerFailures.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailures('request canel');
      case DioExceptionType.unknown:
          if(dioError.message!.contains('SocketException')){
            return  ServerFailures('No Internet Connection');
          }
          else{
            return  ServerFailures('Unknown Faliure');
          }
      case DioExceptionType.connectionError:
          return ServerFailures(dioError.error is SocketException ? "No Internet Connection" : "Connection Error");
    }
  }
  factory ServerFailures.fromResponse(int status, dynamic response) {
    if (status == 400 || status == 401 || status == 403) {
      return ServerFailures(response['error']['message']);
    } else if (status == 404) {
      return ServerFailures('Your request not found, please try later');
    } else if (status == 500) {
      return ServerFailures('Internal server error, Please contact admin');
    } else {
      return ServerFailures('opps there waws error, please try later');
    }
  }
}
