import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/page/form.dart';

class MyDataPage extends StatefulWidget {
  const MyDataPage({super.key});

  @override
  State<MyDataPage> createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Budget'),
      ),
      // Menambahkan drawer menu
      drawer: drawer(),
      body: Container(
             child: Column( 
               children: [
                 for(int i = 0; i < ListData.listData.length; i++)...[
                    Card(
                       child: Container(
                         padding: EdgeInsets.all(10),
                         width: double.infinity,
                         child: Column(
                          children: [
                            Text(
                              ListData.listData[i].judul,
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            Text(
                              ListData.listData[i].nominal.toString(),
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              ListData.listData[i].tipe.toString(),
                              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16),
                            ),
                            Text(
                              ListData.listData[i].date.toString(),
                              style: TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                          ]
                         ),
                       )
                    ),

                    // you can add widget here as well
                 ],

                 // you can add more widgets here
               ],
             ),
          )
    );
  }
}
