import 'package:flutter/material.dart';
import 'package:uguesas/src/datos.dart';
import 'package:uguesas/src/factura.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 100,
        ),
        Text(
          '${hamburguesas[i]} ${precios[i]} Bs',
          style: TextStyle(fontSize: 40),
        ),
        Image.asset('assets/img/${hamburguesas[i]}.png', height: 150),
        Text(
          'Cantidad: ${cantidad[i]}',
          style: TextStyle(fontSize: 30),
        ),
        Text(
          'Total a pagar: $total Bs',
          style: TextStyle(fontSize: 30),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  anterior();
                },
                child: Text('<')),
            ElevatedButton(
                onPressed: () {
                  comprar();
                },
                child: Text('Comprar')),
            ElevatedButton(
                onPressed: () {
                  devolver();
                },
                child: Text('Devolver')),
            ElevatedButton(
                onPressed: () {
                  siguiente();
                },
                child: Text('>')),
          ],
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Factura()));
            },
            child: Text('FINALIZAR'))
      ],
    );
  }

  void siguiente() {
    setState(() {
      i++;
      if (i == hamburguesas.length) i = 0;
    });
  }

  void anterior() {
    setState(() {
      i--;
      if (i == -1) i = hamburguesas.length - 1;
    });
  }

  void comprar() {
    setState(() {
      cantidad[i] += 1;
    });
    pagar();
  }

  void devolver() {
    setState(() {
      cantidad[i] -= 1;
      if (cantidad[i] == -1) cantidad[i] = 0;
    });
    pagar();
  }

  void pagar() {
    double res = 0;
    setState(() {
      for (int j = 0; j < cantidad.length; j++) {
        res += cantidad[j] * precios[j];
      }
      total = res;
    });
  }
}
