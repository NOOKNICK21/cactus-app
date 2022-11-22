// ignore_for_file: prefer_const_constructors
import 'dart:html';

import 'package:cactus/util/cactus_tile.dart';
import 'package:cactus/util/cactus_type.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List cactusType = [
    [
      'กระบองเพชร(ทั้งหมด)',
      true,
    ],
    [
      'สายพันธุ์',
      false,
    ],
    [
      'ขนาด',
      false,
    ],
  ];
  void CactusTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < cactusType.length; i++) {
        cactusType[i][1] = false;
      }
      cactusType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          )
        ],
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            "แคคตัส",
            style: TextStyle(fontSize: 36),
          ),
        ),
        SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "ค้นหากระบองเพชรที่คุณถูกใจ",
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
            ),
          ),
        ),
        SizedBox(height: 25),
        Container(
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cactusType.length,
                itemBuilder: (context, index) {
                  return CactusType(
                    cactusType: cactusType[index][0],
                    isSelected: cactusType[index][1],
                    onTap: () {
                      CactusTypeSelected(index);
                    },
                  );
                })),
        Container(
          child: Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CactusTile(
                  cactusImagePath: 'lib/image/กระบองเพชรนิ้วทอง.png',
                  cactusName: 'กระบองเพชรนิ้วทอง',
                  cactusPrice: '360',
                ),
                CactusTile(
                  cactusImagePath: 'lib/image/กระบองเพชรแม่เฒ่า.png',
                  cactusName: 'กระบองเพชรแม่เฒ่า',
                  cactusPrice: '575',
                ),
                CactusTile(
                  cactusImagePath: 'lib/image/แคคตัสหูกระต่าย.png',
                  cactusName: 'แคคตัสหูกระต่าย',
                  cactusPrice: '290',
                ),
                CactusTile(
                  cactusImagePath: 'lib/image/ถังทอง.png',
                  cactusName: 'ถังทอง',
                  cactusPrice: '650',
                ),
                CactusTile(
                  cactusImagePath: 'lib/image/แมมขนนก.png',
                  cactusName: 'แมมขนนก',
                  cactusPrice: '450',
                ),
                CactusTile(
                  cactusImagePath: 'lib/image/หมวกสังฆราช.png',
                  cactusName: 'หมวกสังฆราช',
                  cactusPrice: '799',
                ),
                CactusTile(
                  cactusImagePath: 'lib/image/แอริโอคาร์ปัส ก็อดซิลล่า.png',
                  cactusName: 'แอริโอคาร์ปัส',
                  cactusPrice: '7740',
                ),
                CactusTile(
                  cactusImagePath: 'lib/image/ฮาโวเทียหยดน้ำ.png',
                  cactusName: 'ฮาโวเทียหยดน้ำ',
                  cactusPrice: '394',
                ),
                CactusTile(
                  cactusImagePath: 'lib/image/ยิมโนแคคตัส.png',
                  cactusName: 'ยิมโนแคคตัส',
                  cactusPrice: '495',
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
