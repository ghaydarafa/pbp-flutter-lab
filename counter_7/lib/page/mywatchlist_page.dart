import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/page/watchlistdetail.dart';
import 'package:counter_7/page/fetchmywatchlist.dart';

class MyWatchListPage extends StatefulWidget {
  const MyWatchListPage({Key? key}) : super(key: key);

  @override
  _MyWatchListPageState createState() => _MyWatchListPageState();
}

class _MyWatchListPageState extends State<MyWatchListPage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
        ),
        drawer: drawer(),
        body: FutureBuilder(
            future: fetchMyWatchList(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada watch list :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          child: Padding(
                              padding: EdgeInsets.all(10),
                              child: 
                                ListTile(
                                  shape: (WatchData.listStatus[index])
                                      ? RoundedRectangleBorder(
                                          side: const BorderSide(
                                              color: Colors.green, width: 2),
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        )
                                      : RoundedRectangleBorder(
                                          side: const BorderSide(
                                              color: Colors.grey, width: 2),
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        ),
                                  title: Text(
                                    "${snapshot.data![index].fields.title}",
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  trailing: Checkbox(
                                    checkColor: Colors.greenAccent,
                                    activeColor: Colors.green,
                                    value: WatchData.listStatus[index],
                                    onChanged: (bool? value) {
                                      setState(() {
                                        WatchData.listStatus[index] = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                          onTap: () {
                            String watched = "Yes";
                            if (WatchData.listStatus[index]) {
                            } else {
                              watched = "No";
                            }
                            WatchData.watch = Watch(
                                watched,
                                snapshot.data![index].fields.title,
                                snapshot.data![index].fields.rating,
                                snapshot.data![index].fields.releaseDate
                                    .toString()
                                    .substring(0, 10),
                                snapshot.data![index].fields.review);
                            // Route menu ke halaman form
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyWatchDetailPage()),
                            );
                          },
                        );
                      });
                }
              }
            }));
  }
}
