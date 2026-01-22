import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  void onAddTap(BuildContext context){
    showDialog(
      context: context, 
      builder: (conetext){
        return AlertDialog(
          title: const Text("Message"),
          content: const Text("Add icon tapped"),
          actions: [
            TextButton(
              onPressed: (){Navigator.pop(context);}, 
              child: const Text("OK")
            )
          ],
        );
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {onAddTap(context);}, // for one line function call: onPressed: () => onAddTap(context)  
            icon: Icon(Icons.add), 
            color: Colors.white,),
          SizedBox(width: 10.0,)
        ],
      ),
      body: Center(
        child: const Text("Tap the + button",style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
      ),
    );
  }
}

