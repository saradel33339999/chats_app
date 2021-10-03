


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/MyHomePage.dart';
import 'package:flutter_app/receiviedMessage.dart';
import 'package:flutter_app/sentMessage.dart';


class ChatScreen  extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF590ED8),

      body:Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40.00),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Container(
                    width: 500,
                    child: Row(

                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 20),
                         child: TextButton( onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage())); }, child: Text('Back',style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),),
                       ),
                       SizedBox(width: 195,),
                        TextButton( onPressed: () {  }, child: Text('Search',style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),),
                     ],
                    ),
                  ),
                  SizedBox(height: 5.00,),

                  Row(
                    children: [
                     Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 25.0),
                           child: Text('Tannaz',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 25.0),
                           child: Text('Sadeghi',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                         ),
                       ],
                     ),
                      SizedBox(width:137.00),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xFFB0A0CC),
                            child: Icon(
                              Icons.call,
                              size: 20,
                              color: Colors.white,

                            ),
                          ),
                        ],
                      ),
                      SizedBox(width:10.00),

                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xFFB0A0CC),
                            child: Icon(
                              Icons.videocam_sharp,
                              size: 20,
                              color: Colors.white,

                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),



                ],
              ),
            ),
          ),

          Container(


            child:  SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        receivedMessage(),
                        sentMessage(),

                        receivedMessage(),
                        receivedMessage(),
                        sentMessage(),

                        receivedMessage(),


                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 5),
                        child: Row(

                          children: [
                            Container(


                              width:310,

                              child: TextFormField(
                                keyboardType: TextInputType.multiline,
                                maxLines: 5,
                                minLines: 1,

                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(



                               filled: true,
                               fillColor: Colors.grey[100],

                                  hintText: 'Type your Message...',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide.none
                                  ),


                                  contentPadding: EdgeInsets.all(20.00),
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      backgroundColor: Color(0XFF5C508F),
                                      radius: 10,
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,color: Colors.white,

                                      ),


                                    ),
                                  ),
                                ),

                              ),

                            ),

                          ],
                        ),
                      ),
                    ),
                  ],

                ),
              ),
            ),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20.00),topRight:Radius.circular(20.00
              )),

            ),
          ),
        ],
      ),


    );
  }

}
