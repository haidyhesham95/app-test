import 'package:chattapp/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Message{
final String message;
final String id;
  Message(this.message,this.id);
  factory Message.fromjson(jsonData){
    return Message(jsonData[kMessage],jsonData['id']);
  }


}