import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void makePutRequest() async {
  Dio dio = Dio();

  try {
    Response response = await dio.put(
      'https://jsonplaceholder.typicode.com/posts/1',
      data: {
        'id': 1,
        'title': 'foo',
        'body': 'bar',
        'userId': 1,
      },
    );

    print('Response data: ${response.data}');
  } catch (error) {
    print('Error making PUT request: $error');
  }
}

class ReqPut extends StatelessWidget {
  const ReqPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PUT Request')),
      body: const Center(
        child: ElevatedButton(
          onPressed: makePutRequest,
          child: Text('Make PUT Request'),
        ),
      ),
    );
  }
}
