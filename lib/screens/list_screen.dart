import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> data = [
      "Informasi 1",
      "Informasi 2",
      "Informasi 3",
      "Informasi 4",
    ];

    return Scaffold(
      appBar: AppBar(title: Text("List Informasi")),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              title: Text(
                data[index],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.arrow_forward_ios, size: 18),
            ),
          );
        },
      ),
    );
  }
}
