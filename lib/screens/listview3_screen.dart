import 'package:flutter/material.dart';

class ListView3Screen extends StatelessWidget {
  const ListView3Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 153, 255),
          title: const Text('Lista de Horarios'),
          elevation: 0,
        ),
        body: ListView(children: const [
          ListTile(
            title: Text('Diurno'),
            leading: Icon(Icons.sunny),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text('Tarde'),
            leading: Icon(Icons.event_outlined),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: Text('Nocturno'),
             leading: Icon(Icons.night_shelter),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
         
        ]));
  }
}
