import 'package:flutter/material.dart';

void main(){
  runApp(const HomeScreen());
}

class HomeScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int counter = 0;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
              Text('$counter', style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),
              Text('Click${counter ==1 ? '': 's'}', style: TextStyle(fontSize: 25),)
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _CustomButton(icon: Icons.plus_one, onPressed: (){
              setState(() {
                counter++;
                });
              }
              ),
              SizedBox(height: 20,),

              _CustomButton(icon: Icons.exposure_minus_1, onPressed: (){
                setState(() {
                  if(counter == 0 ) return;
                  counter--;
                });
              }),

              SizedBox(height: 20,),
              
              _CustomButton(icon: Icons.refresh, onPressed: (){
                setState(() {
                  counter = 0;
                });
                }
              )
              
          ],  
        ),
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback onPressed;
  
  const _CustomButton({
     required this.icon, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: CircleBorder(),
      backgroundColor: Color.fromRGBO(16, 172, 29, 1), 
      elevation: 5,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}