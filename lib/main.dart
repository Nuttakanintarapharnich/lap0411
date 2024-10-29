import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Big Data',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF98C9A3)),
        useMaterial3: true,
      ),
      home: MyAppPage(),
    );
  }
}

class MyAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Big Data",
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFF6DBF9E),
        centerTitle: true,
        elevation: 6,
      ),
      body: MyContent(),
    );
  }

  Widget MyContent() {
    final List<Map<String, String>> students = [
      {'name': 'นายณัฐกานต์ อินทรพานิชย์ 643450072-7', 'image': 'assets/w.jpg'},
      {'name': 'นายเจษฎา ลีรัตน์ 643450067-0', 'image': 'assets/pa.jpg'},
      {
        'name': 'นายเกรียงศักดิ์ หมู่เมืองสอง 643450322-0',
        'image': 'assets/s.jpg'
      },
      {'name': 'นายธนาธิป เตชะ 643450076-9', 'image': 'assets/jjj.jpg'},
      {'name': 'นายพีระเดช โพธิ์หล้า 643450082-4', 'image': 'assets/p.jpg'},
      {'name': 'นายวิญญู พรมภิภักดิ์ 643450084-0', 'image': 'assets/m.jpg'},
      {'name': 'นายเทวารัณย์ ชัยกิจ 643450324-6', 'image': 'assets/pr.jpg'},
      {'name': 'นายศุภชัย แสนประสิทธิ์ 643450332-7', 'image': 'assets/b.jpg'},
    ];

    return Container(
      color: Color(0xFFE8F5E9), // พื้นหลังสีเขียวพาสเทลอ่อน
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Text(
            "รายชื่อนักศึกษาปี 4 CIS",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0xFF388E3C),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: students.length,
              itemBuilder: (context, index) {
                final student = students[index];
                final imageUrl = student['image']!;
                final studentName = student['name']!;
                final isHighlighted =
                    studentName == 'นายณัฐกานต์ อินทรพานิชย์ 643450072-7';

                return Card(
                  color: Color(0xFFA5D6A7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(imageUrl),
                      radius: 28,
                    ),
                    title: Text(
                      '${index + 1}. $studentName',
                      style: TextStyle(
                        fontSize: 20,
                        color:
                            isHighlighted ? Color(0xFF1B5E20) : Colors.black87,
                        fontWeight:
                            isHighlighted ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                    trailing: Icon(
                      isHighlighted ? Icons.star : Icons.person,
                      color: isHighlighted ? Color(0xFF1B5E20) : Colors.black54,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
