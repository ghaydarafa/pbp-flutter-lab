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
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan( //style for all textspan
                              children: [ 
                                  TextSpan(text:"Release date: ", style: TextStyle(fontWeight: FontWeight.bold,)),
                                  TextSpan(text:"${WatchData.watch!.releaseDate.substring(8, 10)}${WatchData.watch!.releaseDate.substring(7, 8)}${WatchData.watch!.releaseDate.substring(5, 7)}${WatchData.watch!.releaseDate.substring(4, 5)}${WatchData.watch!.releaseDate.substring(0, 4)}"),
                              ]
                            )
                          ),   
                          if (WatchData.watch?.rating != null)
                              RichText(
                                text: TextSpan( //style for all textspan
                                  children: [ 
                                      TextSpan(text:"Rating: ", style: TextStyle(fontWeight: FontWeight.bold,)),
                                      TextSpan(text:"${WatchData.watch!.rating.toString()}"),
                                  ]
                                )
                              ),
                          if (WatchData.watch?.rating == null)
                              RichText(
                                text: const TextSpan( //style for all textspan
                                  children: [ 
                                      TextSpan(text:"Rating: ", style: TextStyle(fontWeight: FontWeight.bold,)),
                                      TextSpan(text:"-"),
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
                          if (WatchData.watch?.review != null)
                              RichText(
                                text: TextSpan( //style for all textspan
                                  children: [ 
                                      TextSpan(text:"Review: ", style: TextStyle(fontWeight: FontWeight.bold,)),
                                      TextSpan(text:"${WatchData.watch!.review}"),
                                  ]
                                )
                              ),
                          if (WatchData.watch?.review == null)
                              RichText(
                                text: const TextSpan( //style for all textspan
                                  children: [ 
                                      TextSpan(text:"Review: ", style: TextStyle(fontWeight: FontWeight.bold,)),
                                      TextSpan(text:"-"),
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
                      child: const Text(
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
