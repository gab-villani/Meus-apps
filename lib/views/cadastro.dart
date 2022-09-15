import 'dart:math';

import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // width: MediaQuery.of(context).size.width * 0.6,
            margin: EdgeInsets.only(left: 150,right: 150),
            child: TextField(
              decoration: InputDecoration(
                  label: Text(
                'nome',
              )),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width * 0.6,
            child: TextField(
              decoration: InputDecoration(
                label: Text(
                  'Email',
                ),        
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            margin: EdgeInsets.only(top: 20),
            child: TextField(
              decoration: InputDecoration(
                label: Text('Senha'),
              
              ),
              obscureText: true,
            ),
          ),
          InkWell(
            onTap: (){
              print('Meu nome é Gabriela');
            },
            child: Container(
              margin: EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width * 0.4,
              
              alignment: Alignment.center,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue,
              ),
              child: Text("Teste",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold  ),),
            ),
          )
      
        ],
      ),
    );
  }
}
