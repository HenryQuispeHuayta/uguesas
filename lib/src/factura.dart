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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Table(
            // defaultColumnWidth: FixedColumnWidth(130),
            border: TableBorder.all(),
            columnWidths: const {
              0: FractionColumnWidth(0.45),
              1: FractionColumnWidth(0.3),
              2: FractionColumnWidth(0.2),
            },
            children: [
              const TableRow(children: [
                Text(
                  textAlign: TextAlign.center,
                  'Hamburguesa',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Cantidad',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Total',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                )
              ]),
              for (int j = 0; j < cantidad.length; j++)
                // for(var a in cantidad)
                TableRow(children: [
                  Text(
                    hamburguesas[j],
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    '${cantidad[j]}',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    '${cantidad[j] * precios[j]}',
                    style: TextStyle(fontSize: 25),
                  )
                ])
              // TableRow()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'TOTAL A PAGAR',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                '$total Bs',
                style: TextStyle(fontSize: 25),
              ),
            ],
          )
        ],
      ),
    );
  }

  void contar() {}
}
