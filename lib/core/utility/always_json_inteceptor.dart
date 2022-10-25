import 'package:dio/dio.dart';

class AlwaysJSONTransformer extends DefaultTransformer {
  @override
  Future transformResponse(RequestOptions options, ResponseBody response) {
    response.headers['content-type'] = ['application/json'];
    return super.transformResponse(options, response);
  }
}
