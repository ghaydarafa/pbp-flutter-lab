import 'dart:convert';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:http/http.dart' as http;
import 'package:counter_7/main.dart';

Future<List<MyWatchList>> fetchMyWatchList() async {
    var url =
        Uri.parse('https://tugas-2-pbp-rafa.herokuapp.com/mywatchlist/json');
    var response = await http.get(
      url,
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Content-Type": "application/json",
      },
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object MyWatchList
    List<MyWatchList> listWatchList = [];
    for (var d in data) {
      if (d != null) {
        listWatchList.add(MyWatchList.fromJson(d));
        if (MyWatchList.fromJson(d).fields.watched == "Yes")
          WatchData.listStatus.add(true);
        if (MyWatchList.fromJson(d).fields.watched == "No")
          WatchData.listStatus.add(false);
      }
    }

    return listWatchList;
  }
