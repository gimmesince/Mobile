import 'dart:async' show Future;
import 'dart:convert' show json;
import 'package:http/http.dart' as http;

class User{
  String ?id;
  String ?name;
  String ?email;
  User({required this.id, required this.name,required this.email});
  factory User.createUser(Map <String, dynamic> json) {
    return User(
      id: json['id'].toString(),
      name: json['first_name']+" "+json['last_name'],
      email :json['email'],
    );
  }
  static Future<User> connectToAPI(String id,param1,param2)async{
    String apiURL = "https://reqres.in/api/users/"+id;
    var apiResult = await http.get(Uri.parse(apiURL));
    var jsonObject = json.decode(apiResult.body);
    var userData = (jsonObject as Map<String, dynamic>)['data'];
    return User.createUser(userData);
  }
}
