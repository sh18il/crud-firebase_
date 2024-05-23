import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:st_project/model/st_model.dart';
import 'package:st_project/service/st_service.dart';
import 'package:st_project/view/add_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.small(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AddPage(),
        ));
      }),
      body: StreamBuilder(
        stream: StService().getDatas(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text("error  ......"),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                StModel data = snapshot.data![index];
                return ListTile(
                  title: Text(data.name.toString()),
                );
              },
            );
          }
        },
      ),
    );
  }
}
