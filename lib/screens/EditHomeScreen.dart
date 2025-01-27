import 'package:flutter/material.dart';
import 'package:myapp2/constant/constant.dart';
import 'package:iconly/iconly.dart';
import 'package:multi_dropdown/multi_dropdown.dart';

class User {
  final String name;
  final int id;

  User({required this.name, required this.id});

  @override
  String toString() {
    return 'User(name: $name, id: $id)';
  }
}

class EditHomeScreen extends StatefulWidget {
  const EditHomeScreen({
    super.key,
  });

  @override
  State<EditHomeScreen> createState() => _EditHomeScreenState();
}

class _EditHomeScreenState extends State<EditHomeScreen> {
  final _formKey = GlobalKey<FormState>();

  final controller = MultiSelectController<User>();

  @override
  Widget build(BuildContext context) {
    var items = [
      DropdownItem(label: 'North America', value: User(name: 'NA', id: 1)),
      DropdownItem(label: 'South America', value: User(name: 'SA', id: 6)),
      DropdownItem(label: 'Asia', value: User(name: 'AS', id: 2)),
      DropdownItem(label: 'Europe', value: User(name: 'EU', id: 3)),
      DropdownItem(label: 'Australia', value: User(name: 'AU', id: 4)),
      DropdownItem(label: 'Africa', value: User(name: 'AF', id: 5)),
      DropdownItem(label: 'Antarctica', value: User(name: 'AN', id: 7)),
    ];

    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const SizedBox(
                          height: 4,
                        ),
                        MultiDropdown<User>(
                          items: items,
                          controller: controller,
                          enabled: true,
                          searchEnabled: true,
                          chipDecoration: const ChipDecoration(
                            backgroundColor: Colors.orange,
                            wrap: true,
                            runSpacing: 2,
                            spacing: 10,
                          ),
                          fieldDecoration: FieldDecoration(
                            hintText: 'Continent',
                            hintStyle: const TextStyle(color: Colors.black87),
                            prefixIcon: const Icon(IconlyLight.bookmark),
                            showClearIcon: false,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          dropdownDecoration: const DropdownDecoration(
                            marginTop: 2,
                            maxHeight: 400,
                            header: Padding(
                              padding: EdgeInsets.all(8),
                              child: Text(
                                'Select countries from the list',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          dropdownItemDecoration: DropdownItemDecoration(
                            selectedIcon: const Icon(Icons.check_box,
                                color: Colors.green),
                            disabledIcon:
                                Icon(Icons.lock, color: Colors.grey.shade300),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please select a country';
                            }
                            return null;
                          },
                          onSelectionChange: (selectedItems) {
                            debugPrint("OnSelectionChange: $selectedItems");
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                height: 240,
                child: CarouselView.weighted(
                  flexWeights: [1, 7, 1],
                  itemSnapping: true,
                  elevation: 4,
                  padding: const EdgeInsets.all(8),
                  children: List.generate(10, (int index) {
                    return Container(
                      color: Colors.orange,
                      child: Image.network(
                        "http://picsum.photos/400?random=$index",
                        fit: BoxFit.cover,
                      ),
                    );
                  }),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min, // จัดตำแหน่งให้อยู่ตรงกลาง
                  children: [
                    Icon(
                      IconlyLight.heart, // ไอคอนหัวใจ
                      color: Colors.white, // เปลี่ยนสีตามต้องการ
                      size: 22, // ขนาดไอคอน
                    ),
                    SizedBox(width: 8), // ระยะห่างระหว่างไอคอนกับข้อความ
                    Text(
                      'Add to favorite',
                      style: textBtn, // ใช้ style ที่คุณกำหนด
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 180,
                  height: 170,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisSize:
                          MainAxisSize.min, // จัดตำแหน่งให้อยู่ตรงกลาง
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('images/japan.png'),
                        ),
                        SizedBox(height: 8), // ระยะห่างระหว่างไอคอนกับข้อความ
                        Text(
                          'Japan',
                          style: textBtn, // ใช้ style ที่คุณกำหนด
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 180,
                  height: 170,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisSize:
                          MainAxisSize.min, // จัดตำแหน่งให้อยู่ตรงกลาง
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('images/south-korea.png'),
                        ),
                        SizedBox(height: 8), // ระยะห่างระหว่างไอคอนกับข้อความ
                        Text(
                          'South Korea',
                          style: textBtn, // ใช้ style ที่คุณกำหนด
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 180,
                  height: 170,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisSize:
                          MainAxisSize.min, // จัดตำแหน่งให้อยู่ตรงกลาง
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('images/thailand.png'),
                        ),
                        SizedBox(height: 8), // ระยะห่างระหว่างไอคอนกับข้อความ
                        Text(
                          'Thailand',
                          style: textBtn, // ใช้ style ที่คุณกำหนด
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 180,
                  height: 170,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisSize:
                          MainAxisSize.min, // จัดตำแหน่งให้อยู่ตรงกลาง
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('images/china.png'),
                        ),
                        SizedBox(height: 8), // ระยะห่างระหว่างไอคอนกับข้อความ
                        Text(
                          'China',
                          style: textBtn, // ใช้ style ที่คุณกำหนด
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
