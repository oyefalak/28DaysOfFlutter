import 'package:my_first_app/core/store.dart';
import 'package:my_first_app/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel{

  //catalog filed
  late CatalogModel _catalog;

  //Collection of IDs - store Ids of each item
  final List<int> _itemIds = [];
  //Get Catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog){
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //Get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);


  // Remove Item

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    store?.cart._itemIds.add(item.id);
  }
}




















