import 'package:demoapii/screens/apifunction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model_class/classmodel.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FutureBuilder<List<Students>>(
            future: Apicalling().getApi(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Students>> snapshot) {
              if(snapshot.hasData) {
                print(snapshot.data);
                return ListView.builder(itemCount: snapshot.data?.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListView(
                    children: [
                    ListTile(
                      title: Text(snapshot.data![index].id.toString()),
                    )
                    ],

                  );
                },
              );
              }return Text('vhbnj');
            },
          )
        ],
      ),
    );
  }
}
