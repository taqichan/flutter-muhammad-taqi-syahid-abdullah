import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void makePostRequest() async {
  Dio dio = Dio();

  try {
    Response response = await dio.post(
      'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts',
      data: {
        "id": 4,
        "name": "Taqi Syahid",
        "phone": "08577357566",
      },
    );

    print('Response data: ${response.data}');
  } catch (error) {
    print('Error making POST request: $error');
  }
}

class ReqPost extends StatelessWidget {
  const ReqPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('POST Request'),
      ),
      body: const Center(
        child: ElevatedButton(
          onPressed: makePostRequest,
          child: Text('Make POST Request'),
        ),
      ),
    );
  }
}
