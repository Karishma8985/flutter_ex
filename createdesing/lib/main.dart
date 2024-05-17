import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo App"),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.amber,
                    backgroundColor: Colors.black,
                    shadowColor: Colors.white,
                    side: BorderSide(color: Colors.amber,width: 5)
                    ),
              
                onPressed: () {},
                onLongPress: (){

                },
                child: Text("Click me"),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.delete,size: 100,color: Colors.red,),),
              SizedBox(height: 50,),
              InkWell(child: Container(height: 100,width: 100,color: Colors.blue,
              alignment: Alignment.center,
              child: Text("Demo Container"),
          

              ),
              onTap: (){},),
              GestureDetector(onLongPress: (){},
              child: Container(),
              ),

             FloatingActionButton(onPressed:(){} ,foregroundColor: Colors.white,
             backgroundColor: Colors.purple,
             )
          
             
            ],
          
          ),
          
        ),
      ),
    );
  }
}
