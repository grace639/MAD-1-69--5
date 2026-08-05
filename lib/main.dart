import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ปฏิบัติการบทที่ 5 - Layouts'), // อัปเดต title
        backgroundColor: Colors.indigo, // เปลี่ยนสีตามต้องการ
      ),
      body:  Padding(
        // คง Padding ไว้สำหรับระยะห่างโดยรวม
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:
              CrossAxisAlignment.center, // ค่าเริ่มต้น, ทำให้ชัดเจน
          children: <Widget>[
            Container(color: Colors.red, width: 50, height: 50),
            Container(color: Colors.green, width: 100, height: 50),
            Container(color: Colors.blue, width: 75, height: 50),
          ],
        ),

        // Placeholder
      ),
    );
  }
}
