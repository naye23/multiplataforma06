import 'package:flutter/material.dart';
class SnipetScreen extends StatefulWidget {
  const SnipetScreen({super.key});
  @override
  State<SnipetScreen> createState() => _SnipetScreenState();
  Widget build(BuildContext context) {
    return const Scaffold(
      
    );
  }
}

class _SnipetScreenState extends State<SnipetScreen> {
  int contador = 0;

  void masUno() {
    contador ++;
    setState(() {});
  }

  void menosUno() {
    contador --;
    setState(() {});
  }

  void setCien() {
    contador = 100;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSizeVar22 = TextStyle(fontSize: 22);
    return Scaffold(
      appBar: AppBar(
        title: const Text('L06'),
        backgroundColor: Color.fromARGB(255, 121, 2, 57),
        elevation: 13.5,
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Contador de veces hecho clic',
            style: fontSizeVar22,
          ),
          Text(
            '$contador',
            style: fontSizeVar22,
          )
        ],
      )),
      floatingActionButton: CustomFloatingActions(
        masUnoFn: masUno,
        menosUnoFn: menosUno,
        setCien: setCien,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function masUnoFn;
  final Function menosUnoFn;
  final Function setCien;

  const CustomFloatingActions(
      {super.key,
      required this.masUnoFn,
      required this.menosUnoFn,
      required this.setCien});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 0, 68, 255),
          child: const Icon(Icons.upload),
          onPressed: () => masUnoFn(),
          // () => setState(() => contador--),
        ),
        FloatingActionButton( 
          backgroundColor: const Color.fromARGB(255, 8, 158, 133),
          child: const Icon(Icons.download),
          onPressed: () => menosUnoFn(),
          // () => setState(() => contador--),
        ),
        FloatingActionButton( 
          backgroundColor: const Color.fromARGB(255, 189, 25, 115),
          child: const Icon(Icons.airplanemode_active),
          onPressed: () => setCien(),
          // () => setState(() => contador--),
        ),
      ],
    );
  }
}
