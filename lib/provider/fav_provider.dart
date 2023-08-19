import "package:flutter/foundation.dart";

class FavouriteScreenProvider with ChangeNotifier{
  List<int>  _selectedItem=[];
  List<int>  get selectedItem => _selectedItem;

  void setFav(int value){
    _selectedItem.add(value);
    notifyListeners();
  }

  void removeFav(int value){
    _selectedItem.remove(value);
    notifyListeners();
  }

}