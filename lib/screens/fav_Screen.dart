import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/fav_provider.dart';
import 'package:state_management/screens/myfav_screen.dart';

class MyFavScreen extends StatefulWidget {
  const MyFavScreen({super.key});

  @override
  State<MyFavScreen> createState() => _MyFavScreenState();
}

class _MyFavScreenState extends State<MyFavScreen> {
List<int> selectedItem=[];

  @override
  Widget build(BuildContext context) {
    print('build');
    final provider=Provider.of<FavouriteScreenProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("favourite Screen"),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyFavScreen2()));
            },
              child: Icon(Icons.favorite)),
          SizedBox(width: 20,)
        ],
      ),
      body: Column(
        children: [

          Expanded(
            child: ListView.builder(
              itemCount: 100,
                itemBuilder: (context, index){
                  return Consumer<FavouriteScreenProvider>(builder: (context,value,child){
                    return ListTile(
                      onTap: (){
                        if(value.selectedItem.contains(index)){
                          value.removeFav(index);
                        }else{
                          value.setFav(index);
                        }

                      },
                      title: Text('item'+index.toString()),
                      trailing: Icon(
                          value.selectedItem.contains(index)?Icons.favorite : Icons.favorite_outline),
                    );
                  });
                }),
          )
        ],
      ),
    );
  }
}
