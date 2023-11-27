

import 'model/percon.dart';
import 'netvork/servise.dart';

void main()async{
  String  date =await Network.getData(Network.apiArt);
  print(date);

  List<User> list = artListFromData(date);
  for (var elemant in list) {
    print(elemant);
  }
}