
import 'package:flutter/material.dart';

void main(){
   runApp (const MyApp());
}

class MyApp extends StatefulWidget {
  const new({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('UnitecnarAPP'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$counter',style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),
              Text('Clicks${counter == 1 ? "" : "s"}', style: TextStyle(fontSize: 25),),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              child: Icon(Icons.plus_one),
              onPressed:(){ 
                setState(() {
                  counter++;
                });
              }
              ),  
              SizedBox(height: 20,),
               
              FloatingActionButton(
                child: Icon(Icons.exposure_minus_1),
                onPressed: (){
                  setState((){
                    if(counter == 0)return;
                counter--;
                });
                },
                
              ),
              const SizedBox(height: 20,),
              FloatingActionButton(
                child: Icon(Icons.refresh),
                onPressed: (){
                  setState(() {
                    counter=0;
                  });
                })
          ],
        ),
      ),
    ); 
  }
}