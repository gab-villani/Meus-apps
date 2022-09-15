import 'package:flutter/material.dart';
import 'package:primeiro_app/views/cadastro.dart';
import 'package:primeiro_app/views/operation.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meu App',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextField(
                decoration: InputDecoration(label: Text('Email',style: TextStyle(fontWeight: FontWeight.bold))),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextField(
                decoration: InputDecoration(
                  label: Text('Senha',style: TextStyle(fontWeight: FontWeight.bold) ,),
                ),
                obscureText: true,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Operation()));
                },
                child: Text('Login',style: TextStyle(fontWeight: FontWeight.w900,color:Color.fromARGB(255, 238, 232, 170))),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Cadastro()),
                  );
                },
                child: Text('Cadastro',style: TextStyle(fontWeight: FontWeight.w900,color: Color.fromARGB(255, 0, 255, 60)),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
