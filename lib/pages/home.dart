import 'package:flutter/material.dart';
import 'package:flutter_demo/controllers/counterController.dart';
import 'package:flutter_demo/pages/other.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Clicks: ${counterController.counter.value}")),
          SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(onPressed: (){
              Get.to(OtherPage());
            }, child: Text("Open Other Page")))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: (){counterController.increment();},
        child: Icon(Icons.add),
      ),
    );
  }
}