import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
      debugShowCheckedModeBanner: false
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Home Page", style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const NewScreen()));
          }, icon: Icon(Icons.message), color: Colors.white,),
          IconButton(onPressed: (){}, icon: Icon(Icons.person), color: Colors.white,),
          IconButton(onPressed: (){}, icon: Icon(Icons.email), color: Colors.white,),
          SizedBox(width: 10.0),
        ],
      ),
    );
  }
}

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Messages", style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),),
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back), color: Colors.white,),
      ),
      body: const Center(child: Text("This is message screen",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),)
    );
  }
}