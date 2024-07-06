import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class RandomService{
  String api = "https://randomuser.me/api/";

  apiCalling()async{
    Uri uri = Uri.parse(api);
    Response response = await http.get(uri);

    if(response.statusCode == 200)
      {
        print('Api is fetched-------------');
        return response.body;
      }
    return null;
  }
}