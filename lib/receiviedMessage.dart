import 'package:flutter/material.dart';
class receivedMessage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: CircleAvatar(

              backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/145/145867.png'),
              radius: 15.00,
            ),
          ),


          Expanded(
            child: Card(
              elevation: 1,

              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              color:  Colors.grey[100],
              margin: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10
                        ,
                        right: 60,
                        top: 20,
                        bottom: 20),
                    child: Text('Hello sweetie i am fine what about you my dear??',maxLines: 2,style: TextStyle(color: Colors.grey[600],fontSize: 15,),
                  ),
                  ),

                ],
              ),
            ),
          ),
          Text('23', style: TextStyle(color: Colors.grey),),

        ],
      ),
    );
  }
}
