import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 153, 255),
          title: const Text('Lista de Sedes'),
          elevation: 0,
        ),
        body: ListView(children: const [
          ListTile(
            title: Text('Tecsup Trujillo'),
            leading: Icon(Icons.north),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text('Tecsup Lima'),
            leading: Icon(Icons.center_focus_strong),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text('Tecsup Arequipa'),
             leading: Icon(Icons.south),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
         
        ]));
  }
}
