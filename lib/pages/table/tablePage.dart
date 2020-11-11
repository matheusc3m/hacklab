import 'package:flutter/material.dart';

class TablePage extends StatelessWidget {
  var lista = {
    "#": 1,
    "Hora": "10:00",
    "% de Alcool": "10",
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perda Destilação'),
      ),
      body: ListView(children: <Widget>[
        DataTable(
          columns: [
            DataColumn(label: Text('#')),
            DataColumn(label: Text('Hora')),
            DataColumn(label: Text('% de Alcool')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('10:00')),
              DataCell(Text('6')),
            ]),
            DataRow(cells: [
              DataCell(Text('2')),
              DataCell(Text('12:00')),
              DataCell(Text('9')),
            ]),
            DataRow(cells: [
              DataCell(Text('3')),
              DataCell(Text('13:00')),
              DataCell(Text('8')),
            ]),
          ],
        ),
      ]),
    );
  }
}
