import 'package:flutter/material.dart';

void main() {
  runApp(myPage());
}

class myPage extends StatelessWidget {
  const myPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "As potiguaras",
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: MyOnePage(),
    );
  }
}

class MyOnePage extends StatefulWidget {
  const MyOnePage({Key? key}) : super(key: key);

  @override
  _MyOnePageState createState() => _MyOnePageState();
}

class _MyOnePageState extends State<MyOnePage> {
  var texto = "eu ainda não cliquei";
  var vezesClicadas = 0;
  void _clicando() {
    setState(() {
      if (vezesClicadas == 0) {
        texto = "acabei de clicar";
      } else {
        texto = "ja cliquei $vezesClicadas vezes";
      }
      vezesClicadas++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("As potiguaras"),
          actions: <Widget>[
            TextButton(
                style: ButtonStyle(
                  alignment: AlignmentDirectional.centerStart,
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 0, 0, 0)),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered))
                        return Colors.blue.withOpacity(0.04);
                      if (states.contains(MaterialState.focused) ||
                          states.contains(MaterialState.pressed))
                        return Colors.blue.withOpacity(0.12);
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                onPressed: _clicando,
                child: Text('Home')),
            ButtonBar(
              children: <Widget>[
                TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 0, 0, 0)),
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered))
                            return Colors.blue.withOpacity(0.04);
                          if (states.contains(MaterialState.focused) ||
                              states.contains(MaterialState.pressed))
                            return Colors.blue.withOpacity(0.12);
                          return null; // Defer to the widget's default.
                        },
                      ),
                    ),
                    onPressed: _clicando,
                    child: Text("sobre now"))
              ],
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
                width: 1280,
                height: 720,
                child: Center(
                  child: Text(texto),
                )),
          ],
        ));
  }
}
