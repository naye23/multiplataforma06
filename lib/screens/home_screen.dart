
import 'package:flutter/material.dart';
 //Elementos en ingles pa practicar xd
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tecsup Infoes'),
          elevation: 0,
          backgroundColor: Colors.green,
        ),
        body: ListView(
          children: [
          ListTile(
            title: const Text('Lenguajes'),
            leading: const Icon(Icons.language),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
                    Navigator.pushNamed(context, 'listview1');
                  },
          ),
          ListTile(
            title: const Text('Sedes'),
              leading: const Icon(Icons.place),
            trailing: const Icon(Icons.arrow_forward_ios),
             onTap: () {
                    Navigator.pushNamed(context, 'listview2');
                  },
          ),
          ListTile(
            title: const Text('Horarios'),
            leading: const Icon(Icons.timelapse),
            trailing: const Icon(Icons.arrow_forward_ios),
             onTap: () {
                    Navigator.pushNamed(context, 'listview3');
                  },
          )
        ]));
  }
}
