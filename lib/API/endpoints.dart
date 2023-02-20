abstract class Endpoints {
  static const int receiveTimeout = 150000;
  static const String baseURL = "http://34.200.107.216/fineract-provider/api/v1";
  static const int connectionTimeout = 150000;


  // Authentication
  static const String registerUser = "";
  static const String loginUser = "/authentication?returnClientList=false";
}
