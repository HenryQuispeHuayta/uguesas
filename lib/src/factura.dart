import 'package:flutter/material.dart';
import 'package:uguesas/src/datos.dart';

class Factura extends StatefulWidget {
  const Factura({super.key});

  @override
  State<Factura> createState() => _FacturaState();
}

class _FacturaState extends State<Factura> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Factura')),
        body: Table(
          children: [
            const TableRow(
              children: [
                Text('Hamburguesa'),
                Text('Cantidad'),
                Text('Total')
              ]
            ),
            for (int j = 0; j < cantidad.length; j++)
              // for(var a in cantidad)
              TableRow(children: [
                Text(hamburguesas[j]),
                Text('${cantidad[j]}'),
                Text('${cantidad[j] * precios[j]}')
              ])
            // TableRow()
          ],
        ));
  }

  void contar() {}
}
