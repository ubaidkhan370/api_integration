/// YApi QuickType插件生成，具体参考文档:https://plugins.jetbrains.com/plugin/18847-yapi-quicktype/documentation

import 'dart:convert';

ProductsModel productsModelFromJson(String str) =>
    ProductsModel.fromJson(json.decode(str));

String productsModelToJson(ProductsModel data) => json.encode(data.toJson());

class ProductsModel {
  ProductsModel({
    required this.data,
    required this.success,
    required this.message,
  });

  List<Datum> data;
  bool success;
  String message;

  factory ProductsModel.fromJson(Map<dynamic, dynamic> json) => ProductsModel(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        success: json["success"],
        message: json["message"],
      );

  Map<dynamic, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "success": success,
        "message": message,
      };
}

class Datum {
  Datum({
    required this.date,
    required this.sold,
    required this.images,
    required this.shop,
    required this.color,
    required this.salePercent,
    required this.description,
    required this.subcat,
    required this.title,
    required this.salePrice,
    required this.saleTitle,
    required this.sliderNew,
    required this.size,
    required this.price,
    required this.id,
    required this.categories,
    required this.inWishlist,
    required this.onSale,
    required this.sliderRecent,
    required this.sliderSold,
  });

  String date;
  int sold;
  List<Image> images;
  Shop shop;
  String color;
  int salePercent;
  String description;
  Categories subcat;
  String title;
  String salePrice;
  String saleTitle;
  bool sliderNew;
  String size;
  String price;
  String id;
  Categories categories;
  bool inWishlist;
  bool onSale;
  bool sliderRecent;
  bool sliderSold;

  factory Datum.fromJson(Map<dynamic, dynamic> json) => Datum(
        date: json["date"],
        sold: json["sold"],
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        shop: Shop.fromJson(json["shop"]),
        color: json["color"],
        salePercent: json["sale_percent"],
        description: json["description"],
        subcat: Categories.fromJson(json["subcat"]),
        title: json["title"],
        salePrice: json["sale_price"],
        saleTitle: json["sale_title"],
        sliderNew: json["slider_new"],
        size: json["size"],
        price: json["price"],
        id: json["_id"],
        categories: Categories.fromJson(json["categories"]),
        inWishlist: json["in_wishlist"],
        onSale: json["on_sale"],
        sliderRecent: json["slider_recent"],
        sliderSold: json["slider_sold"],
      );

  Map<dynamic, dynamic> toJson() => {
        "date": date,
        "sold": sold,
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "shop": shop.toJson(),
        "color": color,
        "sale_percent": salePercent,
        "description": description,
        "subcat": subcat.toJson(),
        "title": title,
        "sale_price": salePrice,
        "sale_title": saleTitle,
        "slider_new": sliderNew,
        "size": size,
        "price": price,
        "_id": id,
        "categories": categories.toJson(),
        "in_wishlist": inWishlist,
        "on_sale": onSale,
        "slider_recent": sliderRecent,
        "slider_sold": sliderSold,
      };
}

class Categories {
  Categories({
    required this.date,
    this.image,
    required this.salePercent,
    required this.name,
    required this.id,
    required this.type,
  });

  String date;
  String? image;
  int salePercent;
  String name;
  String id;
  String type;

  factory Categories.fromJson(Map<dynamic, dynamic> json) => Categories(
        date: json["date"],
        image: json["image"],
        salePercent: json["sale_percent"],
        name: json["name"],
        id: json["_id"],
        type: json["type"],
      );

  Map<dynamic, dynamic> toJson() => {
        "date": date,
        "image": image,
        "sale_percent": salePercent,
        "name": name,
        "_id": id,
        "type": type,
      };
}

class Image {
  Image({
    required this.id,
    required this.url,
  });

  String id;
  String url;

  factory Image.fromJson(Map<dynamic, dynamic> json) => Image(
        id: json["id"],
        url: json["url"],
      );

  Map<dynamic, dynamic> toJson() => {
        "id": id,
        "url": url,
      };
}

class Shop {
  Shop({
    required this.image,
    required this.isActive,
    required this.shopcity,
    required this.shopaddress,
    required this.name,
    required this.createdAt,
    required this.description,
    required this.shopemail,
    required this.id,
    required this.userid,
  });

  String image;
  bool isActive;
  String shopcity;
  String shopaddress;
  String name;
  String createdAt;
  String description;
  String shopemail;
  String id;
  String userid;

  factory Shop.fromJson(Map<dynamic, dynamic> json) => Shop(
        image: json["image"],
        isActive: json["is_active"],
        shopcity: json["shopcity"],
        shopaddress: json["shopaddress"],
        name: json["name"],
        createdAt: json["created_At"],
        description: json["description"],
        shopemail: json["shopemail"],
        id: json["_id"],
        userid: json["userid"],
      );

  Map<dynamic, dynamic> toJson() => {
        "image": image,
        "is_active": isActive,
        "shopcity": shopcity,
        "shopaddress": shopaddress,
        "name": name,
        "created_At": createdAt,
        "description": description,
        "shopemail": shopemail,
        "_id": id,
        "userid": userid,
      };
}
