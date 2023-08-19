import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/example_1_provider.dart';

class MultipleProvider extends StatefulWidget {
  const MultipleProvider({super.key});


  @override
  State<MultipleProvider> createState() => _MultipleProviderState();
}

class _MultipleProviderState extends State<MultipleProvider> {

  @override
  Widget build(BuildContext context) {
    final provider= Provider.of<Example1Provider>(context,listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text("subscribe"),
        centerTitle: true,
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<Example1Provider>(builder: (context,value,child){
            return Slider(value: value.value, onChanged: (val){
              min: 0;
              max: 1;
              // value=val;
              provider.setCount(val);

            });
          }),
          Consumer<Example1Provider>(builder: (context,value,child){
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(value.value),

                  ),
                  child: Center(child: Text("Container 1")),
                ),
              ),
              Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(value.value)
                    ),
                    child: Center(child: Text("Container 2")),
                  ))
            ],
          );
          }),

        ],
      ),
    );
  }
}
