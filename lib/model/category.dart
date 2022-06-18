class Category {
  List<CategoryList>? categoryList;
  String? imagePath;
  bool? status;
  String? msg;

  Category({this.categoryList, this.imagePath, this.status, this.msg});

  Category.fromJson(Map<String, dynamic> json) {
    if (json['category_list'] != null) {
      categoryList = <CategoryList>[];
      json['category_list'].forEach((v) {
        categoryList!.add(new CategoryList.fromJson(v));
      });
    }
    imagePath = json['Image_Path'];
    status = json['status'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.categoryList != null) {
      data['category_list'] =
          this.categoryList!.map((v) => v.toJson()).toList();
    }
    data['Image_Path'] = this.imagePath;
    data['status'] = this.status;
    data['msg'] = this.msg;
    return data;
  }
}

class CategoryList {
  List<Providers>? providers;
  String? categoryName;
  String? categoryImage;

  CategoryList({this.providers, this.categoryName, this.categoryImage});

  CategoryList.fromJson(Map<String, dynamic> json) {
    if (json['providers'] != null) {
      providers = <Providers>[];
      json['providers'].forEach((v) {
        providers!.add(new Providers.fromJson(v));
      });
    }
    categoryName = json['Category_Name'];
    categoryImage = json['Category_Image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.providers != null) {
      data['providers'] = this.providers!.map((v) => v.toJson()).toList();
    }
    data['Category_Name'] = this.categoryName;
    data['Category_Image'] = this.categoryImage;
    return data;
  }
}

class Providers {
  int? providerID;
  String? name;
  String? address;
  String? phone;
  String? lat;
  String? lng;
  int? isVerified;
  double? distance;
  String? price;
  String? aboutBusiness;
  String? image;
  String? uPI;
  String? paymentPhotoID;
  int? unlock;
  int? hidewhatsapp;
  int? hidecall;
  int? averageRating;
  int? numReview;
  String? subscriptionText;
  int? subscriptionTypeId;
  String? subscriptionType;

  Providers(
      {this.providerID,
      this.name,
      this.address,
      this.phone,
      this.lat,
      this.lng,
      this.isVerified,
      this.distance,
      this.price,
      this.aboutBusiness,
      this.image,
      this.uPI,
      this.paymentPhotoID,
      this.unlock,
      this.hidewhatsapp,
      this.hidecall,
      this.averageRating,
      this.numReview,
      this.subscriptionText,
      this.subscriptionTypeId,
      this.subscriptionType});

  Providers.fromJson(Map<String, dynamic> json) {
    providerID = json['Provider_ID'];
    name = json['Name'];
    address = json['Address'];
    phone = json['Phone'];
    lat = json['Lat'];
    lng = json['Lng'];
    isVerified = json['Is_Verified'];
    distance = json['Distance'];
    price = json['Price'];
    aboutBusiness = json['About_Business'];
    image = json['Image'];
    uPI = json['UPI'];
    paymentPhotoID = json['Payment_Photo_ID'];
    unlock = json['Unlock'];
    hidewhatsapp = json['hidewhatsapp'];
    hidecall = json['hidecall'];
    averageRating = json['Average_Rating'];
    numReview = json['Num_Review'];
    subscriptionText = json['subscription_text'];
    subscriptionTypeId = json['subscription_type_id'];
    subscriptionType = json['subscription_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Provider_ID'] = this.providerID;
    data['Name'] = this.name;
    data['Address'] = this.address;
    data['Phone'] = this.phone;
    data['Lat'] = this.lat;
    data['Lng'] = this.lng;
    data['Is_Verified'] = this.isVerified;
    data['Distance'] = this.distance;
    data['Price'] = this.price;
    data['About_Business'] = this.aboutBusiness;
    data['Image'] = this.image;
    data['UPI'] = this.uPI;
    data['Payment_Photo_ID'] = this.paymentPhotoID;
    data['Unlock'] = this.unlock;
    data['hidewhatsapp'] = this.hidewhatsapp;
    data['hidecall'] = this.hidecall;
    data['Average_Rating'] = this.averageRating;
    data['Num_Review'] = this.numReview;
    data['subscription_text'] = this.subscriptionText;
    data['subscription_type_id'] = this.subscriptionTypeId;
    data['subscription_type'] = this.subscriptionType;
    return data;
  }
}
