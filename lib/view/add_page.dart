import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:st_project/model/st_model.dart';
import 'package:st_project/service/st_service.dart';
// import 'package:uuid/uuid.dart';

class AddPage extends StatelessWidget {
  AddPage({super.key});

  TextEditingController nameCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController addresCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: nameCtrl,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              TextFormField(
                controller: emailCtrl,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              TextFormField(
                controller: addresCtrl,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              ElevatedButton(
                  onPressed: () {
                    add();
                  },
                  child: Text("submit")),
            ],
          ),
        ),
      ),
    );
  }

  add() async {
    StModel adModel = StModel(
      name: nameCtrl.text,
      email: emailCtrl.text,
      address: addresCtrl.text,
    );
    await StService().addData(adModel);
  }
}
