import 'package:counter_7/page/mywatchlist_page.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/page/form.dart';

class MyWatchDetailPage extends StatefulWidget {
  const MyWatchDetailPage({super.key});

  @override
  State<MyWatchDetailPage> createState() => _MyWatchDetailPageState();
}

class _MyWatchDetailPageState extends State<MyWatchDetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      // Menambahkan drawer menu
      drawer: drawer(),
      body: Container(
          width: double.infinity,
            padding: EdgeInsets.all(10),
              child: Column(
               children: [
                    Text(
                      WatchData.watch!.title,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22,),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan( //style for all textspan
                              children: [ 
                                  TextSpan(text:"Release date: ", style: TextStyle(fontWeight: FontWeight.bold,)),
                                  TextSpan(text:"${WatchData.watch!.releaseDate.toString()}"),
                              ]
                            )
                          ),   
                          RichText(
                            text: TextSpan( //style for all textspan
                              children: [ 
                                  TextSpan(text:"Rating: ", style: TextStyle(fontWeight: FontWeight.bold,)),
                                  TextSpan(text:"${WatchData.watch!.rating.toString()}"),
                              ]
                            )
                          ),   
                          RichText(
                            text: TextSpan( //style for all textspan
                              children: [ 
                                  TextSpan(text:"Watched: ", style: TextStyle(fontWeight: FontWeight.bold,)),
                                  TextSpan(text:"${WatchData.watch!.watched}"),
                              ]
                            )
                          ),   
                          RichText(
                            text: TextSpan( //style for all textspan
                              children: [ 
                                  TextSpan(text:"Review: ", style: TextStyle(fontWeight: FontWeight.bold,)),
                                  TextSpan(text:"${WatchData.watch!.review}"),
                              ]
                            )
                          ), 
                        ]
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.blue),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => MyWatchListPage()),
                        );
                      },
                      child: Text(
                        "Back",
                        style: TextStyle(
                          color: Color(0xffffffff),
                        ),
                      ),
                    )  
               ],
               
             ),
          ),
    );
  }
}
