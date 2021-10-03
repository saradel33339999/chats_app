import 'package:flutter/material.dart';
class sentMessage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints:BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width-44
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,

          children: [
            Text('22', style: TextStyle(color: Colors.grey),),


            Card(
              elevation: 1,

              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              color:  Color(0XFFE5DDF0),
              margin: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10
                        ,
                        right: 60,
                        top: 20,
                        bottom: 20),
                    child: Text('Hey!!!!!! How are you???',style: TextStyle(color: Colors.grey[600],fontSize: 15),),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
