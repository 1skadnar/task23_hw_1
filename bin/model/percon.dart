import 'dart:convert';

List<User>artListFromData(String data)
=>List<User>.from(jsonDecode(data).map((e)
=>User.fromJson(e)));
String artToData(User art) => jsonEncode(art.toJson());
class User{
  late String name;
  late int age;
  late bool isStudent ;
  late List<int> address;
  // late List<String> adress ;


  User.fromJson( Map<String ,dynamic >json){
    name = json['name'];
    age = json['age'];
    isStudent = json['isStudent'];
    address = List<int>.from(json['address'].map((e)=>e.toString()));

  }
  Map<String , dynamic>toJson(){
    Map<String,dynamic>map={
      "productName" : name,
      "cost" : age,
      "isStudent" : isStudent,
      "grades" : address,

    };
    return map;
  }
  @override
  String toString() {
    return "\nName :$name \n Age : $age \n Is Student : $isStudent \n Adress : $address ";
  }

}