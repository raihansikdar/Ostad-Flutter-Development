class ProductModel {
  final String? id,
      productName,
      productCode,
      image,
      unitPrice,
      quantity,
      totalPrice,
      createdAt;

  ProductModel(
    this.id,
    this.productName,
    this.productCode,
    this.image,
    this.unitPrice,
    this.quantity,
    this.totalPrice,
    this.createdAt,
  );

  factory ProductModel.toJson(Map<String, dynamic> e) {
    return ProductModel(
      e['_id'],
      e['ProductName'],
      e['ProductCode'],
      e['Img'],
      e['UnitPrice'],
      e['Qty'],
      e['TotalPrice'],
      e['CreatedDate'],
    );
  }
}
