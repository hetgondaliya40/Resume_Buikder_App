import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

File? image;
int index = 0;
String email = "";
String add = "";
String num = "";
String Pass = "";
bool visible = true;

String name = "";

class Personal extends StatefulWidget {
  const Personal({super.key});

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  ImagePicker picker = ImagePicker();

  Future<void> pickImage({required ImageSource source}) async {
    XFile? xFile = await picker.pickImage(
      source: source,
    );

    if (xFile != null) {
      image = File(xFile.path);
    }
  }

  GlobalKey key = GlobalKey();

  TextEditingController namecontrol = TextEditingController();
  TextEditingController emailcontrol = TextEditingController();
  TextEditingController addresscontrol = TextEditingController();
  TextEditingController numbercontrol = TextEditingController();
  TextEditingController passwordcontrol = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Personal Info"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      index = 0;
                      log("$index");
                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color:
                                index == 0 ? Colors.teal : Colors.transparent,
                            width: 4.w,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Contact",
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      index = 1;
                      log("$index");
                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color:
                                index == 1 ? Colors.teal : Colors.transparent,
                            width: 4.w,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Images",
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Expanded(
                child: IndexedStack(
                  index: index,
                  children: [
                    SingleChildScrollView(
                      child: Form(
                        key: key,
                        child: Column(
                          children: [
                            TextFormField(
                              validator: (val) =>
                                  (val!.isEmpty) ? "Enter your Name..." : null,
                              keyboardType: TextInputType.name,
                              cursorColor: Colors.teal,
                              textInputAction: TextInputAction.next,
                              cursorWidth: 2,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w400),
                              decoration: InputDecoration(
                                fillColor: Colors.teal,
                                focusColor: Colors.teal,
                                labelText: "Enter your Name...",
                                labelStyle: const TextStyle(color: Colors.grey),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.teal),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.teal,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.teal,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                              onChanged: (val) {
                                name = val;
                              },
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            TextFormField(
                              validator: (val) => (val!.isEmpty)
                                  ? "Enter your E-mail..."
                                  : null,
                              cursorColor: Colors.teal,
                              keyboardType: TextInputType.emailAddress,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w400),
                              cursorWidth: 2,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                fillColor: Colors.teal,
                                focusColor: Colors.teal,
                                labelText: "Enter your E-mail...",
                                labelStyle: TextStyle(color: Colors.grey),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.teal),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.teal,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.teal,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                              onChanged: (val) {
                                email = val;
                              },
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            TextFormField(
                              validator: (val) => (val!.isEmpty)
                                  ? "Enter your Address..."
                                  : null,
                              cursorColor: Colors.teal,
                              cursorWidth: 2,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w400),
                              maxLines: 2,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                fillColor: Colors.teal,
                                focusColor: Colors.teal,
                                labelText: "Enter your Address...",
                                labelStyle: TextStyle(color: Colors.grey),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.teal),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.teal,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.teal,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                              // onChanged: (val) {
                              //   add = val;
                              // },
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            TextFormField(
                              validator: (val) => (val!.isEmpty)
                                  ? "Enter your Number..."
                                  : null,
                              cursorColor: Colors.teal,
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.number,
                              cursorWidth: 2,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w400),
                              maxLength: 10,
                              decoration: InputDecoration(
                                labelText: "Enter your Number...",
                                labelStyle: TextStyle(color: Colors.grey),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.teal),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.teal,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.teal,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                              onChanged: (val) {
                                num = val;
                              },
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            TextFormField(
                              validator: (val) => (val!.isEmpty)
                                  ? "Enter your password..."
                                  : null,
                              obscureText: visible,
                              cursorColor: Colors.teal,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w400),
                              textInputAction: TextInputAction.done,
                              cursorWidth: 2,
                              decoration: InputDecoration(
                                labelText: "Enter your Password...",
                                labelStyle: TextStyle(color: Colors.grey),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.teal),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    visible = !visible;
                                    setState(() {});
                                  },
                                  icon: (visible)
                                      ? Icon(Icons.visibility)
                                      : Icon(Icons.visibility_off),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.teal,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.teal,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                              // onChanged: (val) {
                              //   val = Pa;
                              // },
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Divider(),
                            SizedBox(
                              height: 20.h,
                            ),
                            TextFormField(
                              cursorColor: Colors.teal,
                              cursorWidth: 2,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w400),
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                fillColor: Colors.teal,
                                focusColor: Colors.teal,
                                hintText: "Hindi",
                                hintStyle: TextStyle(color: Colors.grey),
                                labelText: "Language",
                                labelStyle:
                                    TextStyle(color: Colors.grey, fontSize: 20),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.teal),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.teal,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.teal,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                              // onChanged: (val) {
                              //   val = decplace;
                              //   setState(() {});
                              // },
                            ),
                            SizedBox(
                              height: 25.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.teal,
                                  ),
                                  child: const Text(
                                    "Submit",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    namecontrol.clear();
                                    emailcontrol.clear();
                                    addresscontrol.clear();
                                    namecontrol.clear();
                                    passwordcontrol.clear();
                                    setState(() {});
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.teal,
                                  ),
                                  child: const Text(
                                    "Reset",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Text("Image"),
                    Container(
                      height: 250.h,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.center,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 70.w,
                            backgroundImage: (image != null)
                                ? FileImage(image!)
                                : NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGHRR3hmaWGnKRU1flnUvukPsjQ6KFG2iKkQ&s")
                                    as ImageProvider,
                          ),
                          FloatingActionButton.small(
                            backgroundColor: Colors.white,
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: const Text("Pick Image"),
                                  titleTextStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.sp,
                                  ),
                                  backgroundColor: Colors.teal,
                                  content: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      ElevatedButton.icon(
                                        onPressed: () {
                                          pickImage(source: ImageSource.camera);
                                          setState(() {});
                                        },
                                        label: Text("Camera"),
                                      ),
                                      ElevatedButton.icon(
                                        onPressed: () {
                                          pickImage(
                                              source: ImageSource.gallery);
                                          setState(() {});
                                        },
                                        label: Text("Gallary"),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            splashColor: Colors.tealAccent,
                            child: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
