enum OrderType {
  zipper('Fermuar'),
  accessories('Aksesuarlar');

  const OrderType(this.type);
  final String type;

  static OrderType fromString(String val) {
    return switch (val) {
      'Fermuar' => OrderType.zipper,
      'Aksesuar' => OrderType.accessories,
      _ => throw UnimplementedError()
    };
  }
}
