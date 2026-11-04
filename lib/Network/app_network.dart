
import 'package:evently_app_c13_sun_7_pm/core/constant/end_points.dart';
import 'package:http/http.dart' as http;
import '../core/constant/constants.dart';
abstract class AppNetwork {
  static getsources(String categoryId)async{
    try{
    var queryparmaters ={
      'apiKey':Constants.apiKEY,
      'category':categoryId
    };
    var url =Uri.https(
      Constants.baseURL ,
      EndPoints.endpoints ,
      queryparmaters,
    );
  var data = await http.get(url);
    print(data.request);
  print(data.body);
    }
    catch(e){
//throw Error();
    }
  }
}