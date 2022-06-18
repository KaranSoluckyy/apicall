import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Testtt extends StatefulWidget {
  const Testtt({Key? key}) : super(key: key);

  @override
  State<Testtt> createState() => _TestttState();
}

class _TestttState extends State<Testtt> {
  @override
  void initState() {
    super.initState();
    makePostRequest();
  }

  makePostRequest() async {
    String token = "1_ac432ef2b617d2cb23b84266fb327753";
    final uri = Uri.parse(
        "http://trustserv.org/webservice_v10/v1/providerBySubCategory");
    final headers = {
      'Authorization': '$token',
    };
    Map<String, dynamic> body = {
      "category_id": "108",
      "Lat": "23.0733446",
      "Lng": "72.5546009",
      "Range": "2400000",
      "subcategory_id": "718",
      "User_ID": "1"
    };
    String jsonBody = json.encode(body);

    Response response = await post(
      uri,
      headers: headers,
      body: jsonBody,
    );
    print(response.statusCode);
    print(uri);
    print(headers);
    print(jsonBody);
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
