class ProductModel {
  bool availableForPickup;
  double averageRating;
  // List<Object> baseOptions;
  List<BundleTemplates> bundleTemplates;
  List<Categories> categories;
  String code;
  List<ConversionUnits> conversionUnits;
  List<DataSheets> dataSheets;
  String description;
  String ean;
  List<String> keywords;
  KtwImportedCompany ktwImportedCompany;
  List<KtwMediaFolder> ktwMediaFolder;
  String madeIn;
  String manufacturer;
  String manufacturerAID;
  String name;
  int numberOfReviews;
  Price price;
  PriceRange priceRange;
  bool purchasable;
  String remarks;
  Stock stock;
  String summary;
  String unit;
  String url;
  List<VolumePrices> volumePrices;
  String warrenty;

  ProductModel(
      {this.availableForPickup,
      this.averageRating,
      this.bundleTemplates,
      this.categories,
      this.code,
      this.conversionUnits,
      this.dataSheets,
      this.description,
      this.ean,
      this.keywords,
      this.ktwImportedCompany,
      this.ktwMediaFolder,
      this.madeIn,
      this.manufacturer,
      this.manufacturerAID,
      this.name,
      this.numberOfReviews,
      this.price,
      this.priceRange,
      this.purchasable,
      this.remarks,
      this.stock,
      this.summary,
      this.unit,
      this.url,
      this.volumePrices,
      this.warrenty});

  ProductModel.fromJson(Map<String, dynamic> json) {
    availableForPickup = json['availableForPickup'];
    averageRating = json['averageRating'];
    // if (json['baseOptions'] != null) {
    // 	baseOptions = new List<Null>();
    // 	json['baseOptions'].forEach((v) { baseOptions.add(new Object().fromJson(v)); });
    // }
    if (json['bundleTemplates'] != null) {
      bundleTemplates = new List<Null>();
      json['bundleTemplates'].forEach((v) {
        bundleTemplates.add(new BundleTemplates.fromJson(v));
      });
    }
    if (json['categories'] != null) {
      categories = new List<Categories>();
      json['categories'].forEach((v) {
        categories.add(new Categories.fromJson(v));
      });
    }
    code = json['code'];
    if (json['conversionUnits'] != null) {
      conversionUnits = new List<ConversionUnits>();
      json['conversionUnits'].forEach((v) {
        conversionUnits.add(new ConversionUnits.fromJson(v));
      });
    }
    if (json['dataSheets'] != null) {
      dataSheets = new List<DataSheets>();
      json['dataSheets'].forEach((v) {
        dataSheets.add(new DataSheets.fromJson(v));
      });
    }
    description = json['description'];
    ean = json['ean'];
    keywords = json['keywords'].cast<String>();
    ktwImportedCompany = json['ktwImportedCompany'] != null
        ? new KtwImportedCompany.fromJson(json['ktwImportedCompany'])
        : null;
    if (json['ktwMediaFolder'] != null) {
      ktwMediaFolder = new List<KtwMediaFolder>();
      json['ktwMediaFolder'].forEach((v) {
        ktwMediaFolder.add(new KtwMediaFolder.fromJson(v));
      });
    }
    madeIn = json['madeIn'];
    manufacturer = json['manufacturer'];
    manufacturerAID = json['manufacturerAID'];
    name = json['name'];
    numberOfReviews = json['numberOfReviews'];
    price = json['price'] != null ? new Price.fromJson(json['price']) : null;
    // priceRange = json['priceRange'] != null
    //     ? new PriceRange.fromJson(json['priceRange'])
    //     : null;
    purchasable = json['purchasable'];
    remarks = json['remarks'];
    stock = json['stock'] != null ? new Stock.fromJson(json['stock']) : null;
    summary = json['summary'];
    unit = json['unit'];
    url = json['url'];
    if (json['volumePrices'] != null) {
      volumePrices = new List<VolumePrices>();
      json['volumePrices'].forEach((v) {
        volumePrices.add(new VolumePrices.fromJson(v));
      });
    }
    warrenty = json['warrenty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['availableForPickup'] = this.availableForPickup;
    data['averageRating'] = this.averageRating;
    // if (this.baseOptions != null) {
    //   data['baseOptions'] = this.baseOptions.map((v) => v.toJson()).toList();
    // }
    if (this.bundleTemplates != null) {
      data['bundleTemplates'] =
          this.bundleTemplates.map((v) => v.toJson()).toList();
    }
    if (this.categories != null) {
      data['categories'] = this.categories.map((v) => v.toJson()).toList();
    }
    data['code'] = this.code;
    if (this.conversionUnits != null) {
      data['conversionUnits'] =
          this.conversionUnits.map((v) => v.toJson()).toList();
    }
    if (this.dataSheets != null) {
      data['dataSheets'] = this.dataSheets.map((v) => v.toJson()).toList();
    }
    data['description'] = this.description;
    data['ean'] = this.ean;
    data['keywords'] = this.keywords;
    if (this.ktwImportedCompany != null) {
      data['ktwImportedCompany'] = this.ktwImportedCompany.toJson();
    }
    if (this.ktwMediaFolder != null) {
      data['ktwMediaFolder'] =
          this.ktwMediaFolder.map((v) => v.toJson()).toList();
    }
    data['madeIn'] = this.madeIn;
    data['manufacturer'] = this.manufacturer;
    data['manufacturerAID'] = this.manufacturerAID;
    data['name'] = this.name;
    data['numberOfReviews'] = this.numberOfReviews;
    if (this.price != null) {
      data['price'] = this.price.toJson();
    }
    if (this.priceRange != null) {
      data['priceRange'] = this.priceRange.toJson();
    }
    data['purchasable'] = this.purchasable;
    data['remarks'] = this.remarks;
    if (this.stock != null) {
      data['stock'] = this.stock.toJson();
    }
    data['summary'] = this.summary;
    data['unit'] = this.unit;
    data['url'] = this.url;
    if (this.volumePrices != null) {
      data['volumePrices'] = this.volumePrices.map((v) => v.toJson()).toList();
    }
    data['warrenty'] = this.warrenty;
    return data;
  }
}

class BundleTemplates {
  String id;
  List<KtwBundleQuantityList> ktwBundleQuantityList;
  String name;

  BundleTemplates({this.id, this.ktwBundleQuantityList, this.name});

  BundleTemplates.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['ktwBundleQuantityList'] != null) {
      ktwBundleQuantityList = new List<KtwBundleQuantityList>();
      json['ktwBundleQuantityList'].forEach((v) {
        ktwBundleQuantityList.add(new KtwBundleQuantityList.fromJson(v));
      });
    }
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.ktwBundleQuantityList != null) {
      data['ktwBundleQuantityList'] =
          this.ktwBundleQuantityList.map((v) => v.toJson()).toList();
    }
    data['name'] = this.name;
    return data;
  }
}

class KtwBundleQuantityList {
  String code;
  int ktwProductQuantity;
  int ktwSequenceID;
  String name;
  Stock stock;
  String unit;
  Price price;

  KtwBundleQuantityList(
      {this.code,
      this.ktwProductQuantity,
      this.ktwSequenceID,
      this.name,
      this.stock,
      this.unit,
      this.price});

  KtwBundleQuantityList.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    ktwProductQuantity = json['ktwProductQuantity'];
    ktwSequenceID = json['ktwSequenceID'];
    name = json['name'];
    stock = json['stock'] != null ? new Stock.fromJson(json['stock']) : null;
    unit = json['unit'];
    price = json['price'] != null ? new Price.fromJson(json['price']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['ktwProductQuantity'] = this.ktwProductQuantity;
    data['ktwSequenceID'] = this.ktwSequenceID;
    data['name'] = this.name;
    if (this.stock != null) {
      data['stock'] = this.stock.toJson();
    }
    data['unit'] = this.unit;
    if (this.price != null) {
      data['price'] = this.price.toJson();
    }
    return data;
  }
}

class Categories {
  String code;

  Categories({this.code});

  Categories.fromJson(Map<String, dynamic> json) {
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    return data;
  }
}

class ConversionUnits {
  int alternativeCount;
  String alternativeUnit;
  int baseCount;
  String baseUnit;
  int conversionGross;
  int conversionHeight;
  int conversionLength;
  int conversionWidth;
  String ktwUnitFactor;
  String weightUnit;

  ConversionUnits(
      {this.alternativeCount,
      this.alternativeUnit,
      this.baseCount,
      this.baseUnit,
      this.conversionGross,
      this.conversionHeight,
      this.conversionLength,
      this.conversionWidth,
      this.ktwUnitFactor,
      this.weightUnit});

  ConversionUnits.fromJson(Map<String, dynamic> json) {
    alternativeCount = json['alternativeCount'];
    alternativeUnit = json['alternativeUnit'];
    baseCount = json['baseCount'];
    baseUnit = json['baseUnit'];
    conversionGross = json['conversionGross'];
    conversionHeight = json['conversionHeight'];
    conversionLength = json['conversionLength'];
    conversionWidth = json['conversionWidth'];
    ktwUnitFactor = json['ktwUnitFactor'];
    weightUnit = json['weightUnit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['alternativeCount'] = this.alternativeCount;
    data['alternativeUnit'] = this.alternativeUnit;
    data['baseCount'] = this.baseCount;
    data['baseUnit'] = this.baseUnit;
    data['conversionGross'] = this.conversionGross;
    data['conversionHeight'] = this.conversionHeight;
    data['conversionLength'] = this.conversionLength;
    data['conversionWidth'] = this.conversionWidth;
    data['ktwUnitFactor'] = this.ktwUnitFactor;
    data['weightUnit'] = this.weightUnit;
    return data;
  }
}

class DataSheets {
  String url;

  DataSheets({this.url});

  DataSheets.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    return data;
  }
}

class KtwImportedCompany {
  String description;
  String name;

  KtwImportedCompany({this.description, this.name});

  KtwImportedCompany.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['description'] = this.description;
    data['name'] = this.name;
    return data;
  }
}

class KtwMediaFolder {
  List<DataSheets> ktwDataSheets;
  String ktwFolder;
  String ktwQualifier;

  KtwMediaFolder({this.ktwDataSheets, this.ktwFolder, this.ktwQualifier});

  KtwMediaFolder.fromJson(Map<String, dynamic> json) {
    if (json['ktwDataSheets'] != null) {
      ktwDataSheets = new List<DataSheets>();
      json['ktwDataSheets'].forEach((v) {
        ktwDataSheets.add(new DataSheets.fromJson(v));
      });
    }
    ktwFolder = json['ktwFolder'];
    ktwQualifier = json['ktwQualifier'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ktwDataSheets != null) {
      data['ktwDataSheets'] =
          this.ktwDataSheets.map((v) => v.toJson()).toList();
    }
    data['ktwFolder'] = this.ktwFolder;
    data['ktwQualifier'] = this.ktwQualifier;
    return data;
  }
}

class Price {
  String currencyIso;
  String ktwDiscountText;
  int minQuantity;
  String priceType;
  double value;
  int wasPrice;

  Price(
      {this.currencyIso,
      this.ktwDiscountText,
      this.minQuantity,
      this.priceType,
      this.value,
      this.wasPrice});

  Price.fromJson(Map<String, dynamic> json) {
    currencyIso = json['currencyIso'];
    ktwDiscountText = json['ktwDiscountText'];
    minQuantity = json['minQuantity'];
    priceType = json['priceType'];
    value = json['value'];
    wasPrice = json['wasPrice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['currencyIso'] = this.currencyIso;
    data['ktwDiscountText'] = this.ktwDiscountText;
    data['minQuantity'] = this.minQuantity;
    data['priceType'] = this.priceType;
    data['value'] = this.value;
    data['wasPrice'] = this.wasPrice;
    return data;
  }
}

class PriceRange {
  PriceRange();

  // PriceRange.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}

class Stock {
  int stockLevel;
  String stockLevelStatus;
  int stockThreshold;
  Storestock storestock;

  Stock(
      {this.stockLevel,
      this.stockLevelStatus,
      this.stockThreshold,
      this.storestock});

  Stock.fromJson(Map<String, dynamic> json) {
    stockLevel = json['stockLevel'];
    stockLevelStatus = json['stockLevelStatus'];
    stockThreshold = json['stockThreshold'];
    storestock = json['storestock'] != null
        ? new Storestock.fromJson(json['storestock'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['stockLevel'] = this.stockLevel;
    data['stockLevelStatus'] = this.stockLevelStatus;
    data['stockThreshold'] = this.stockThreshold;
    if (this.storestock != null) {
      data['storestock'] = this.storestock.toJson();
    }
    return data;
  }
}

class Storestock {
  String storeName;
  int storeStockLevel;
  int totalStock;

  Storestock({this.storeName, this.storeStockLevel, this.totalStock});

  Storestock.fromJson(Map<String, dynamic> json) {
    storeName = json['storeName'];
    storeStockLevel = json['storeStockLevel'];
    totalStock = json['totalStock'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['storeName'] = this.storeName;
    data['storeStockLevel'] = this.storeStockLevel;
    data['totalStock'] = this.totalStock;
    return data;
  }
}

class VolumePrices {
  String currencyIso;
  String ktwDiscountText;
  int minQuantity;
  String priceType;
  double value;
  int wasPrice;
  String ktwCurrencyIsoName;

  VolumePrices(
      {this.currencyIso,
      this.ktwDiscountText,
      this.minQuantity,
      this.priceType,
      this.value,
      this.wasPrice,
      this.ktwCurrencyIsoName});

  VolumePrices.fromJson(Map<String, dynamic> json) {
    currencyIso = json['currencyIso'];
    ktwDiscountText = json['ktwDiscountText'];
    minQuantity = json['minQuantity'];
    priceType = json['priceType'];
    value = json['value'];
    wasPrice = json['wasPrice'];
    ktwCurrencyIsoName = json['ktwCurrencyIsoName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['currencyIso'] = this.currencyIso;
    data['ktwDiscountText'] = this.ktwDiscountText;
    data['minQuantity'] = this.minQuantity;
    data['priceType'] = this.priceType;
    data['value'] = this.value;
    data['wasPrice'] = this.wasPrice;
    data['ktwCurrencyIsoName'] = this.ktwCurrencyIsoName;
    return data;
  }
}
