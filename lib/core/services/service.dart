import 'package:http/http.dart' as http;

class Service {
  static Future<http.Response> get({
    required String url,
    Map<String, String>? headers
  }) {
    return http.get(Uri.parse(url));
  }

  static Future<http.Response> post({
    required String url,
    required Object body,
    Map<String, String>? headers
  }) {
    return http.post(Uri.parse(url), body: body);
  }

  static Future<http.Response> put({
    required String url,
    required Object body,
    Map<String, String>? headers
  }) {
    return http.put(Uri.parse(url), body: body);
  }

  static Future<http.Response> delete({
    required String url,
    Map<String, String>? headers
  }) {
    return http.delete(Uri.parse(url));
  }
}