import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 184, 204, 0),
          title: const Text('Lenguajes de programacion'),
          elevation: 0,
        ),
        body: ListView(children: const [
          ListTile(
            title: Text('Java'),
            leading: Icon(Icons.work_outlined),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text('Python'),
            leading: Icon(Icons.abc),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text('JavaScript'),
             leading: Icon(Icons.javascript),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
         
        ]));
  }
}
