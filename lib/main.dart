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
      body: Padding(
        // คง Padding ไว้สำหรับระยะห่างโดยรวม
        padding: EdgeInsets.all(16.0),

        // ภายในวิดเจ็ต Padding ของ body
        child: Column(
          // คอลัมน์หลักสำหรับหน้า
          children: <Widget>[
            Container(
              // container การ์ด
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                children: <Widget> [
                  Icon(Icons.account_circle, size: 50),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('โปรไฟล์ผู้ใช้',style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 8.0),
                      Text('แก้ไขรายละเอียดโปรไฟล์ของคุณที่นี่'),
                    ],
                  ),
                ],
              ),
            ),
            // เพิ่มการ์ดหรือวิดเจ็ตอื่นๆ ทีหลังหากต้องการ
          ],
        ),
        // Placeholder
      ),
    );
  }
}
