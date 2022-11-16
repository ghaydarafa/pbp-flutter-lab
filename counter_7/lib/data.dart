import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/form.dart';

class MyDataPage extends StatefulWidget {
  final List judulData;
  final List nominalData;
  final List tipeBudgetData;
  const MyDataPage({
    Key? key,
    required this.judulData,
    required this.nominalData,
    required this.tipeBudgetData,
    }) : super(key: key);

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
      drawer: Drawer(
        child: Column(
          children: [
            // Menambahkan clickable menu
            ListTile(
              title: const Text('Counter'),
              onTap: () {
                // Route menu ke halaman utama
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyFormPage(
                      judulData: widget.judulData,
                      nominalData: widget.nominalData,
                      tipeBudgetData: widget.tipeBudgetData)
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyDataPage(
                          judulData: widget.judulData,
                          nominalData: widget.nominalData,
                          tipeBudgetData: widget.tipeBudgetData)
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
             child: Column( 
               children: [
                 for(int i = 0; i < widget.judulData.length; i++)...[
                    Card(
                       child: Container(
                         padding: EdgeInsets.all(10),
                         width: double.infinity,
                         child: Column(
                          children: [
                            Text(
                              widget.judulData[i].toString(),
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            Text(
                              widget.nominalData[i].toString(),
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              widget.tipeBudgetData[i].toString(),
                              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16),
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
