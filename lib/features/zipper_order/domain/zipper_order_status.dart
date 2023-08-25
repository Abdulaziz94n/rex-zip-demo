enum ZipperOrderStatus {
  open('açık'),
  closed('kapalı');

  const ZipperOrderStatus(this.type);
  final String type;

  static ZipperOrderStatus fromString(String val) {
    return switch (val) {
      'açık' => ZipperOrderStatus.open,
      'kapalı' => ZipperOrderStatus.closed,
      _ => throw UnimplementedError()
    };
  }
}
