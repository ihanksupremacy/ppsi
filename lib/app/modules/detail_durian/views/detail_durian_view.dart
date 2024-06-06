import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailDurianView extends StatelessWidget {
  const DetailDurianView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args = Get.arguments as Map<String, dynamic>;
    final String detail = args['detail'] as String;
    final String gambar = args['gambar'] as String;
    final String nama = args['nama'] as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Durian'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.network(gambar),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              // Wrap the Text widgets inside a Column
              children: [
                Text(
                  nama,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  detail,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
