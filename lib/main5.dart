import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                // Row สำหรับ Icon และ Text Column
                children: <Widget>[
                  const Icon(
                    Icons.account_circle,
                    size: 50,
                    color: Colors.indigo,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    // เว้นวรรคระหว่างไอคอนและข้อความ
                    child: Column(
                      // Column สำหรับรายละเอียดข้อความ
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // จัดข้อความชิดซ้าย
                      mainAxisSize: MainAxisSize
                          .min, // ป้องกันไม่ให้ column ใช้ความสูงเต็ม
                      children: const <Widget>[
                        Text(
                          'โปรไฟล์ผู้ใช้',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ), // เว้นวรรคระหว่าง title และ description
                        Text('แก้ไขรายละเอียดโปรไฟล์ของคุณที่นี่'),
                      ],
                    ),
                  ),
                ],
              ),
              // Placeholder
            ),
            // เพิ่มการ์ดหรือวิดเจ็ตอื่นๆ ทีหลังหากต้องการ
          ],
        ),
      ),
    );
  }
}
