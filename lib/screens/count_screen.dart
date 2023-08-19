
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/count_provider.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({super.key});

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  @override
  Widget build(BuildContext context) {
    print('build');
    final countprovider= Provider.of<CountProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
        centerTitle: true,
      ),
      body: Center(
        child:Consumer<CountProvider>(builder: (context,value,child){
          print("only this vidget builds");
          return
            Text(countprovider.count.toString(),
              style: TextStyle(fontSize: 50),);

        },)      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          countprovider.setcount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
