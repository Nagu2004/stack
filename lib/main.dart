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
      home: Homepage(),
    );
  }
}
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            PageView(
              scrollDirection: Axis.values[1],

              children: [
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.green,
                ),

                Container(
                  color: Colors.cyan,
                )
              ],
            ),
           Container(
             width: 104,
               height: 41,
               color: Colors.grey[400],
               child: const Text("STACK",style:TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold),))
          ],
        ),
      ),
    );
  }
}
