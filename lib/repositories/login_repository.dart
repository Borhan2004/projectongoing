import 'package:create_project_via_mvvm/data/networks/network_api_services.dart';
import 'package:create_project_via_mvvm/resources/app%20url/app_url.dart';

class LoginRepository {
  final _apiService = NetworkApiServices();
  Future<dynamic> loginApi(var data) async {
    dynamic response = _apiService.postApi(data, AppUrl.loginApi);
    return response;
  }
}
