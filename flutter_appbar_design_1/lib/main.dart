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

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){
            MySnackBar("Menu is clicked", context);
          },
        ),
        title: Text("Home"),
        actions: [ 
          IconButton(onPressed: (){MySnackBar("I'm shopping cart",context);}, icon: Icon(Icons.shopping_cart)),
          IconButton(onPressed: (){MySnackBar("I'm search",context);}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar("I'm menu book", context);}, icon: Icon(Icons.menu_book),),
          SizedBox(width: 10.0,)
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("AppBar Design", style: TextStyle(fontSize: 22),),
            Text("Tanvir's Flutter Journey", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: (){MySnackBar("I'm action button",context);},
        elevation: 10,
        child: Icon(Icons.add, color: Colors.white)
        ),
    );
  }
  
}