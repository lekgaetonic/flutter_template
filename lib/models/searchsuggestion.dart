class SearchSuggestionModel {
  List<Brand> brands;
  List<Category> category;
  List<Product> products;
  List<String> suggestions;

  SearchSuggestionModel(
      {this.brands, this.category, this.products, this.suggestions});

  SearchSuggestionModel.fromJson(Map<String, dynamic> json) {
    if (json['brand'] != null) {
      brands = new List<Brand>();
      json['brand'].forEach((v) {
        brands.add(new Brand.fromJson(v));
      });
    }
    if (json['category'] != null) {
      category = new List<Category>();
      json['category'].forEach((v) {
        category.add(new Category.fromJson(v));
      });
    }
    if (json['product'] != null) {
      products = new List<Product>();
      json['product'].forEach((v) {
        products.add(new Product.fromJson(v));
      });
    }
    if (json['suggestion'] != null) {
      suggestions = new List<String>();
      json['suggestion'].forEach((v) {
        suggestions.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.brands != null) {
      data['brand'] = this.brands.map((v) => v.toJson()).toList();
    }
    if (this.category != null) {
      data['category'] = this.category.map((v) => v.toJson()).toList();
    }
    if (this.products != null) {
      data['product'] = this.products.map((v) => v.toJson()).toList();
    }
    if (this.suggestions != null) {
      data['suggestion'] = this.suggestions.map((v) => v).toList();
    }
    return data;
  }
}

class Brand {
  String code;
  int count;
  String link;
  String name;

  Brand({this.code, this.count, this.link, this.name});

  Brand.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    count = json['count'];
    link = json['link'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['count'] = this.count;
    data['link'] = this.link;
    data['name'] = this.name;
    return data;
  }
}

class Category {
  String code;
  int count;
  String link;
  String name;

  Category({this.code, this.count, this.link, this.name});

  Category.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    count = json['count'];
    link = json['link'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['count'] = this.count;
    data['link'] = this.link;
    data['name'] = this.name;
    return data;
  }
}

class Product {
  String code;
  String link;
  String manufacturers;
  String name;
  String price;
  String stockstatus;
  String summary;

  Product(
      {this.code,
      this.link,
      this.manufacturers,
      this.name,
      this.price,
      this.stockstatus,
      this.summary});

  Product.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    link = json['link'];
    manufacturers = json['manufacturers'];
    name = json['name'];
    price = json['price'] != null ? json['price'].toString() : '-';
    stockstatus = json['stockstatus'];
    summary = json['summary'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['link'] = this.link;
    data['manufacturers'] = this.manufacturers;
    data['name'] = this.name;
    data['price'] = this.price;
    data['stockstatus'] = this.stockstatus;
    data['summary'] = this.summary;
    return data;
  }
}
