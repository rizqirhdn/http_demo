import 'package:flutter/material.dart';

import '../../models/model.dart';
import '../../controllers/network_helper.dart';

class HomeScreen extends StatefulWidget {
  static const String title = "Home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(HomeScreen.title),
      ),
      body: Center(
        child: _employeesData()
      )
    );
  }
}

FutureBuilder _employeesData(){
  return FutureBuilder<List<Employees>>(
    future: GetEmployee().getEmployees(),
    builder: (BuildContext context, AsyncSnapshot<List<Employees>> snapshot){
      if (snapshot.hasData) {
        List<Employees> data = snapshot.data;
        return _employees(data);
      } else if (snapshot.hasError) {
        return Text("${snapshot.error}");
      }
      return CircularProgressIndicator();
    },
  );
}

ListView _employees(data) {
  return ListView.builder(
    itemCount: data.length,
    itemBuilder: (context, index) {
      return Card(
        child: _tile(data[index].employeeName, data[index].employeeSalary, Icons.work)
      );
    }
  );
}

ListTile _tile(String title, String subtitle, IconData icon) {
  return ListTile(
    title: Text(title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        )),
    subtitle: Text(subtitle),
    leading: Icon(
      icon,
      color: Colors.blue[500],
    ),
  );
}