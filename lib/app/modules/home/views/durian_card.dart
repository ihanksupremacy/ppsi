import 'package:flutter/material.dart';

class DurianCard extends StatelessWidget {
  final String durianName;
  final String durianDetail;
  final String imageUrl;

  const DurianCard({
    Key? key,
    required this.durianName,
    required this.durianDetail,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.20),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                imageUrl,
                width: 120,
                height: 120,
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            durianName,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            durianDetail,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
