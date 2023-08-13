enum OrderType {
  zipper('zipper'),
  accessories('accessories');

  const OrderType(this.type);
  final String type;

  static OrderType fromString(String val) {
    return switch (val) {
      'zipper' => OrderType.zipper,
      'accessories' => OrderType.accessories,
      _ => throw UnimplementedError()
    };
  }
}
