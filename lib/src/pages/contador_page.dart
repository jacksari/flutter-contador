import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _ContadorPageState();


}

class _ContadorPageState extends State<ContadorPage>{

  final _estiloTexto = new TextStyle(fontSize: 30);

  int _conteo = 10;

@override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Contador Flutter'),
      centerTitle: true,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Número de clicks: ', style: _estiloTexto ),
          Text('$_conteo', style: _estiloTexto)
        ],
      ),
    ),
    floatingActionButton: _crearBotones()
  );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30.0,),
        FloatingActionButton(onPressed: _zero, child: Icon(Icons.exposure_zero)),
        Expanded(child: SizedBox()),
        FloatingActionButton(onPressed: _disminuir, child: Icon(Icons.remove)),
        SizedBox(width: 5.0,),
        FloatingActionButton(onPressed: _agregar, child: Icon(Icons.add)),
      ],
    );
  }

  void _agregar() => setState(() => _conteo++ );
  void _disminuir() => setState(() => _conteo--);
  void _zero() => setState(() => _conteo = 0);


}