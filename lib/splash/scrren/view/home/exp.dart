import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

String cname = "";
String Status = "";
String roal = "";
int? expyear;

class Experiance extends StatefulWidget {
  const Experiance({super.key});

  @override
  State<Experiance> createState() => _ExperianceState();
}

class _ExperianceState extends State<Experiance> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Experience"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextFormField(
                cursorColor: Colors.teal,
                cursorWidth: 2,
                style: const TextStyle(fontWeight: FontWeight.w400),
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  fillColor: Colors.teal,
                  focusColor: Colors.teal,
                  hintStyle: TextStyle(color: Colors.grey),
                  labelText: "Company Name",
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 20),
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
                  val = cname;
                },
              ),
              SizedBox(
                height: 25.h,
              ),
              TextFormField(
                cursorColor: Colors.teal,
                cursorWidth: 2,
                style: const TextStyle(fontWeight: FontWeight.w400),
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  fillColor: Colors.teal,
                  focusColor: Colors.teal,
                  hintStyle: TextStyle(color: Colors.grey),
                  labelText: "Roal (optional)",
                  hintText: "HR",
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 20),
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
                  val = cname;
                },
              ),
              SizedBox(
                height: 25.h,
              ),
              TextFormField(
                cursorColor: Colors.teal,
                cursorWidth: 2,
                style: const TextStyle(fontWeight: FontWeight.w400),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  fillColor: Colors.teal,
                  focusColor: Colors.teal,
                  hintStyle: TextStyle(color: Colors.grey),
                  labelText: "Experiance Year's (optional)",
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 20),
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
                  val = expyear.toString();
                },
              ),
              SizedBox(
                height: 25.h,
              ),
              TextFormField(
                cursorColor: Colors.teal,
                cursorWidth: 2,
                style: const TextStyle(fontWeight: FontWeight.w400),
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  fillColor: Colors.teal,
                  focusColor: Colors.teal,
                  hintStyle: TextStyle(color: Colors.grey),
                  labelText: "Date joined",
                  hintText: "DD/MM/YYYY",
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 20),
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
                  val = expyear.toString();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
