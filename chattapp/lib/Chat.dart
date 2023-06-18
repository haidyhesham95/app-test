import 'package:chattapp/component/ChatBubble.dart';
import 'package:chattapp/constants.dart';
import 'package:chattapp/moddel/messages.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class ChatPage extends StatelessWidget {
  final _controller=ScrollController();

  static String id = 'ChatPage';
  CollectionReference messages = FirebaseFirestore.instance.collection(kMessagesCollections);
  TextEditingController controller=TextEditingController();

  ChatPage({super.key});
  @override
  Widget build(BuildContext context) {
    var email=ModalRoute.of(context)!.settings.arguments;
    return StreamBuilder<QuerySnapshot>(
      stream: messages.orderBy('createdAt',descending: true).snapshots(),
      builder: (context,snapshot){

        if (snapshot.hasData)
          {
            List<Message> messageslist = [];
            for(int i = 0;i<snapshot.data!.docs.length;i++)
              {
                messageslist.add(Message.fromjson(snapshot.data!.docs[i]));
              }


            return Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: kPrimaryColor,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        kLogo,
                        height: 50,
                      ),
                      Text('Chat'),
                    ],
                  ),
                ),
                body: Column(
                  children: [
                    Expanded(

                      child: ListView.builder(
                        controller: _controller,
                        itemCount: messageslist.length,
                        itemBuilder:(context,index){
                          return messageslist[index].id ==email ?
                            ChatBubble(message: messageslist[index ],)
                              :ChatBubble(message:messageslist[index ] );
                        } ,



                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: TextField(
                        controller: controller,
                        onSubmitted: (data){
                          messages.add({kMessage:data,'createdAt':DateTime.now(),id:email});
                          controller.clear();
                          _controller.animateTo(
                          0,  //_controller.position.maxScrollExtent  ,
                              duration: Duration(seconds:1 ),
                              curve: Curves.fastOutSlowIn);
                        },
                        decoration: InputDecoration(
                            hintText: 'Send Message',
                            suffixIcon: Icon(Icons.send,color: kPrimaryColor,),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: kPrimaryColor,
                                )
                            )
                        ),
                      ),
                    )
                  ],
                )
            );
          }else{
          return Text('loging.....');
        }
      }
    );
  }
}
