import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

var contador=1;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Column(
          children: <Widget>[
            Image.network('https://iteso.mx/image/journal/article?img_id=19709269&t=1585681671152'),
            ListTile(
              title: Text('ITESO, Universidad Jesuita de Guadalajara'),
              subtitle: Text('Tlajomulco de Zuñiga'),
              trailing: likes(),
            ),
            SizedBox(height:50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column( children: [snack1(), Text('Correo')]),
                Column( children: [snack2(), Text('LLamar')]),
                Column( children: [snack3(), Text('Ruta')])
              ]
            ),
            SizedBox(height:50),
            SizedBox(height:50),
            Text("El ITESO, Universidad Jesuita de Guadalajara, es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957. La institución forma parte del Sistema Universitario Jesuita que integra a ocho universidades en México. $contador")
        ],
        ),
      ),
    );
  }
}

class likes extends StatefulWidget{
  @override
  State<likes> createState()=> _contador();
}

class _contador extends State<likes>{
  bool _hasBeenPressed = false;
  bool _hasBeenPressed1 = false;
  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          onPressed: (){
            setState((){
              contador+=1;
              _hasBeenPressed1 = !_hasBeenPressed1;
            });      
          }, 
          icon: Icon(Icons.thumb_up),
          color: _hasBeenPressed1 ? Colors.blue : Colors.black,
        ),
        IconButton(
          onPressed: (){
            setState((){
              contador-=1;
              _hasBeenPressed = !_hasBeenPressed;
            });      
          }, 
          icon: Icon(Icons.thumb_down),
          color: _hasBeenPressed ? Colors.blue : Colors.black,
        ),
        Text("Likes: $contador")
      ]
    );
  }
}


class snack1 extends StatefulWidget{
  @override
  State<snack1> createState()=> _botones();
}

class _botones extends State<snack1>{
  bool _hasBeenPressed = false;

  @override
  Widget build(BuildContext context){
    return Row(
      children: <Widget>[
        IconButton(onPressed: (){
          setState((){
            _hasBeenPressed = !_hasBeenPressed;
          });
          const snackBar = SnackBar(
          content: Text('Correo'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }, 
        icon: Icon(Icons.mail),
        color: _hasBeenPressed ? Colors.blue : Colors.black,
        )
        
      ]
    );
  }
}


class snack2 extends StatefulWidget{
  @override
  State<snack2> createState()=> _botones2();
}

class _botones2 extends State<snack2>{
  bool _hasBeenPressed = false;
  @override
  Widget build(BuildContext context){
    return Row(
      children: <Widget>[
        IconButton(onPressed: (){
          setState((){
            _hasBeenPressed = !_hasBeenPressed;
          });
          const snackBar = SnackBar(
          content: Text('Telefono 3336-34343'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }, icon: Icon(Icons.phone),
        color: _hasBeenPressed ? Colors.blue : Colors.black,
        )
      ]
    );
  }
}

class snack3 extends StatefulWidget{
  @override
  State<snack3> createState()=> _botones3();
}

class _botones3 extends State<snack3>{
  bool _hasBeenPressed = false;
  @override
  Widget build(BuildContext context){
    return Row(
      children: <Widget>[
        IconButton(onPressed: (){
          setState((){
            _hasBeenPressed = !_hasBeenPressed;
          });
          const snackBar = SnackBar(
          content: Text('Ruta Periferico Sur'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }, icon: Icon(Icons.directions),
        color: _hasBeenPressed ? Colors.blue : Colors.black,
        )
      ]
    );
  }
}
