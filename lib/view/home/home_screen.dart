import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random/provider/random_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    RandomProvider randomProvider = Provider.of<RandomProvider>(context);
    return Scaffold(
     appBar: AppBar(
       leading: Icon(Icons.menu),
       title: Text('RandomUser' , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),
       actions: [
         Icon(Icons.edit),
         SizedBox(width: 10,),
       ],
     ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           Padding(
             padding: const EdgeInsets.only(top: 100 ),
             child: Container(
               height: 500,
               width: 350,
               decoration: BoxDecoration(
                 border: Border.all(color: Colors.black , width: 2),
                 borderRadius: BorderRadius.circular(20)
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   SizedBox(height: 20,),
                   CircleAvatar(
                     radius: 70,
                     backgroundImage: NetworkImage('https://randomuser.me/api/portraits/women/5.jpg'),
                   ),
                   SizedBox(height: 10,),
                   Text('Mrs Afşar Adal', style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                   Text('afsar.adal@example.com'),
                   Text('1979-07-29T07:18:39.743Z'),
                   Text('orangerabbit321'),
                   Text('(406)-049-3493'),
                   Text('(317)-739-5266'),

                 ],
               ),
             ),
           ),


            SizedBox(height: 30,),
           ElevatedButton(onPressed: () {

           }, child: Icon(Icons.refresh)),
           SizedBox(height: 40,),
           Container(
             height: 60,
             width: double.infinity,
             decoration: BoxDecoration(
               border: Border.all(color: Colors.black , width: 4),
               borderRadius: BorderRadius.circular(15)
             ),
             child: Row(
               children: [
                 SizedBox(width: 10,),
                 Icon(Icons.search , size: 35,),
                 SizedBox(width: 50,),
                 Icon(Icons.settings , size: 35,),
                 SizedBox(width: 50,),
                 Icon(Icons.add , size: 35,),
                 SizedBox(width: 50,),
                 Icon(Icons.person_2_outlined , size: 35,),
                 SizedBox(width: 50,),
                 Icon(Icons.more_vert , size: 35,),

               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}
