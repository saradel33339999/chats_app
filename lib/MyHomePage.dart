


import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ChatScreen.dart';
import 'items.dart';

class MyHomePage  extends StatelessWidget {
  List <items> Items = [
    items(name: 'Sofya',
        url: 'https://cdn-icons-png.flaticon.com/512/3048/3048140.png',
        message: 'Hello! Iam Sara ,How Are u?',
        time: '1:49 am',
    color: Colors.yellow[200]),
    items(name: 'marina',
      url: 'https://cdn-icons-png.flaticon.com/512/3048/3048163.png',
      message: 'I Am so busy today',
      time: '12:00 am',
      color: Colors.blueGrey[200]
    ),
    items(name: 'sally',
        url: 'https://cdn-icons-png.flaticon.com/512/3048/3048157.png',
        message: 'Let\'s go to the gym',
        time: '10:30 pm',
      color: Colors.pinkAccent[100]
    ),
    items(name: 'mariam',
        url: 'https://cdn-icons-png.flaticon.com/512/3048/3048223.png',
        message: 'what do you want?',
        time: 'yesterday',
    color: Colors.orangeAccent[100]),
    items(name: 'maha',
        url: 'https://cdn-icons-png.flaticon.com/512/3048/3048153.png',
        message: 'I miss u so much',
        time: 'yesterday',
    color: Colors.greenAccent[100]),
    items(name: 'maha',
        url: 'https://cdn-icons-png.flaticon.com/512/3048/3048223.png',
        message: 'I miss u so much',
        time: 'yesterday',
    color: Colors.purpleAccent[100]),
    items(name: 'medhat',
        url: 'https://cdn-icons-png.flaticon.com/512/3048/3048134.png',
        message: 'what do you want?',
        time: 'yesterday'),


  ];
  var Context;


  @override
  Widget build(BuildContext context) {
    Context=context;
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

                 Padding(
                   padding: const EdgeInsets.only(left: 25.0,top: 20),
                   child: Text('Chat With',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 25.0),
                   child: Text('your friends',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                 ),
                 SizedBox(height: 20,),

                 Padding(
                   padding: const EdgeInsets.only(left: 25.00),
                   child: SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                     child: Row(
                       children: [
                         CircleAvatar(
                           radius: 21,
                           backgroundColor: Color(0xFFB0A0CC),
                           child: Icon(
                             Icons.search,
                             size: 27,
                             color: Colors.white,

                           ),
                         ),
                         SizedBox(width: 13,),

                         CircleAvatar(

                           backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/145/145867.png',


                           ),
                           radius: 23.00,

                         ),
                         SizedBox(width: 13,),
                         CircleAvatar(
                          backgroundColor: Colors.lightBlueAccent[100],
                           backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/3048/3048122.png'),
                           radius: 23.00,
                         ),
                         SizedBox(width: 13,),
                         CircleAvatar(
                           backgroundColor: Colors.redAccent,

                           backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/3048/3048157.png'),
                           radius: 23.00,
                         ),
                         SizedBox(width: 13,),
                         CircleAvatar(
                           backgroundColor: Colors.purpleAccent,

                           backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/3048/3048205.png'),
                           radius: 23.00,
                         ),
                         SizedBox(width: 13,),
                         CircleAvatar(
                           backgroundColor: Colors.white,

                           backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/3048/3048134.png'),
                           radius: 23.00,
                         ),
                         SizedBox(width: 13,),
                         CircleAvatar(
                           backgroundColor: Colors.white,

                           backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/3048/3048223.png'),
                           radius: 23.00,
                         ),
                       ],
                     ),
                   ),
                 ),
               ],
             ),
           ),
         ),
             SizedBox(height: 5,),

             Container(
               height: 557,

               child:  SingleChildScrollView(

                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: Column(
                     children: [
                       ListView.separated(
                           shrinkWrap: true,
                           physics: NeverScrollableScrollPhysics(),

                           itemBuilder: (context, index) => chats(Items[index]),
                           separatorBuilder: (context, index) => SizedBox(height: 30,),
                           itemCount: Items.length),


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
  Widget chats(items I) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: (){
            Navigator.push(Context, MaterialPageRoute(builder: (context)=>ChatScreen()));
          },
          child: Row(

            children: [
              CircleAvatar(
                backgroundColor: I.color,

                backgroundImage: NetworkImage('${I.url}'),
                radius: 25.00,
              ),
              Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 245,
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Text('${I.name}',
                          style: TextStyle(fontWeight: FontWeight.bold),),
                        Spacer(),
                        Column(children: [
                          Text('${I.time}',style: TextStyle(color: Colors.grey),),
                        ],
                        ),


                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.00),
                    child: Expanded(child: Text('${I.message}', maxLines: 2,overflow:TextOverflow.ellipsis,)),
                  ),


                ],
              ),
            ],
          ),
        ),
      );
}
