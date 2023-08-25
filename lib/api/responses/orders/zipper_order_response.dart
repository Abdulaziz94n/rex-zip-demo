import 'package:rex_zip/api/constants/api_keys.dart';

class ZipperOrderResponse {
  String color;
  int referenceNo;
  String rightBottomSewingThread;
  String zipperCode;
  String currency;
  int cursorFire;
  String printNote;
  String subStop;
  int amount;
  String subHandgripOverlay;
  int discount;
  int sipStatus;
  DateTime date;
  String cursorColor;
  int fire;
  String brand;
  String model;
  int id;
  double unitPriceInTl;
  String clientDesc;
  String orderNo;
  String colorPrecision;
  int productionSurplusPermit;
  int customerCost;
  DateTime formFillDate;
  int handgripCost;
  String contrastOutterColor;
  int handgripAccessoryCost;
  DateTime customerDeadline;
  int orderGroup;
  String topSewingThread;
  int subCursorCost;
  String sewingThreadColor;
  int orderLineNum;
  String handgripCode;
  int orderId;
  String cursorRawMaterialCode;
  int productionQuantity;
  int overlayCost;
  String lazerNote;
  int colorConfirmation;
  int exchangeRate;
  String bottomSewingThread;
  String outterColor;
  String discountOperation;
  String topStopOverlay;
  String subCursorCode;
  int vatStatus;
  String handgripOvelay;
  int billNo;
  int subHandgripCost;
  int colorCost;
  DateTime closingDate;
  double vatTotal;
  DateTime colorReadyDate;
  String leftBottomSewingThread;
  String subCursorColor;
  double currencyTotal;
  String noteSilme;
  double tlTotal;
  String cursorCode;
  double unitPrice;
  String note2;
  String note1;
  int discountRate;
  String stockType;
  String topStop;
  String clientCode;
  String handgripAccessoar;
  String colorReadyToUse;
  int discountStatus;
  int subOverlayCost;
  String colorNote;
  String subHandgripAccessoar;
  int contractPrice;
  DateTime colorConfirmDate;
  int vatRate;
  String rightTopSewingThread;
  String clientOrderNo;
  String noteMine;
  String orderNote;
  int length;
  DateTime lastShippedDate;
  DateTime deadlineDate;
  String outterMaterial;
  int cursorCost;
  String subHandgripCode;
  String dipSeparator;
  String leftUpperSewingThread;
  int noteStone;
  String lightType;
  int lowerhandgripAccessoryPrice;
  String subStopOverlay;
  int printStatus;
  String filmStrip;
  String otherStockCode;
  String noteSewing;
  String note4;
  String note3;
  String unit;
  DateTime deadlineEndDate;
  double lineTotal;
  ZipperOrderResponse({
    required this.color,
    required this.referenceNo,
    required this.rightBottomSewingThread,
    required this.zipperCode,
    required this.currency,
    required this.cursorFire,
    required this.printNote,
    required this.subStop,
    required this.amount,
    required this.subHandgripOverlay,
    required this.discount,
    required this.sipStatus,
    required this.date,
    required this.cursorColor,
    required this.fire,
    required this.brand,
    required this.model,
    required this.id,
    required this.unitPriceInTl,
    required this.clientDesc,
    required this.orderNo,
    required this.colorPrecision,
    required this.productionSurplusPermit,
    required this.customerCost,
    required this.formFillDate,
    required this.handgripCost,
    required this.contrastOutterColor,
    required this.handgripAccessoryCost,
    required this.customerDeadline,
    required this.orderGroup,
    required this.topSewingThread,
    required this.subCursorCost,
    required this.sewingThreadColor,
    required this.orderLineNum,
    required this.handgripCode,
    required this.orderId,
    required this.cursorRawMaterialCode,
    required this.productionQuantity,
    required this.overlayCost,
    required this.lazerNote,
    required this.colorConfirmation,
    required this.exchangeRate,
    required this.bottomSewingThread,
    required this.outterColor,
    required this.discountOperation,
    required this.topStopOverlay,
    required this.subCursorCode,
    required this.vatStatus,
    required this.handgripOvelay,
    required this.billNo,
    required this.subHandgripCost,
    required this.colorCost,
    required this.closingDate,
    required this.vatTotal,
    required this.colorReadyDate,
    required this.leftBottomSewingThread,
    required this.subCursorColor,
    required this.currencyTotal,
    required this.noteSilme,
    required this.tlTotal,
    required this.cursorCode,
    required this.unitPrice,
    required this.note2,
    required this.note1,
    required this.discountRate,
    required this.stockType,
    required this.topStop,
    required this.clientCode,
    required this.handgripAccessoar,
    required this.colorReadyToUse,
    required this.discountStatus,
    required this.subOverlayCost,
    required this.colorNote,
    required this.subHandgripAccessoar,
    required this.contractPrice,
    required this.colorConfirmDate,
    required this.vatRate,
    required this.rightTopSewingThread,
    required this.clientOrderNo,
    required this.noteMine,
    required this.orderNote,
    required this.length,
    required this.lastShippedDate,
    required this.deadlineDate,
    required this.outterMaterial,
    required this.cursorCost,
    required this.subHandgripCode,
    required this.dipSeparator,
    required this.leftUpperSewingThread,
    required this.noteStone,
    required this.lightType,
    required this.lowerhandgripAccessoryPrice,
    required this.subStopOverlay,
    required this.printStatus,
    required this.filmStrip,
    required this.otherStockCode,
    required this.noteSewing,
    required this.note4,
    required this.note3,
    required this.unit,
    required this.deadlineEndDate,
    required this.lineTotal,
  });

  factory ZipperOrderResponse.fromMap(Map<String, dynamic> map) {
    return ZipperOrderResponse(
      color: map[ApiKeys.color] ?? '',
      referenceNo: map[ApiKeys.referenceNo]?.toInt() ?? 0,
      rightBottomSewingThread: map[ApiKeys.rightBottomSewingThread] ?? '',
      zipperCode: map[ApiKeys.zipperCode] ?? '',
      currency: map[ApiKeys.currency] ?? '',
      cursorFire: map[ApiKeys.cursorFire]?.toInt() ?? 0,
      printNote: map[ApiKeys.printNote] ?? '',
      subStop: map[ApiKeys.subStop] ?? '',
      amount: map[ApiKeys.amount]?.toInt() ?? 0,
      subHandgripOverlay: map[ApiKeys.subHandgripOverlay] ?? '',
      discount: map[ApiKeys.discount]?.toInt() ?? 0,
      sipStatus: map[ApiKeys.sipStatus]?.toInt() ?? 0,
      date: DateTime.fromMillisecondsSinceEpoch(map[ApiKeys.date]),
      cursorColor: map[ApiKeys.cursorColor] ?? '',
      fire: map[ApiKeys.fire]?.toInt() ?? 0,
      brand: map[ApiKeys.brand] ?? '',
      model: map[ApiKeys.model] ?? '',
      id: map[ApiKeys.id]?.toInt() ?? 0,
      unitPriceInTl: map[ApiKeys.unitPriceInTl]?.toDouble() ?? 0.0,
      clientDesc: map[ApiKeys.clientDesc] ?? '',
      orderNo: map[ApiKeys.orderNo] ?? '',
      colorPrecision: map[ApiKeys.colorPercision] ?? '',
      productionSurplusPermit:
          map[ApiKeys.productionSurplusPermit]?.toInt() ?? 0,
      customerCost: map[ApiKeys.customerCost]?.toInt() ?? 0,
      formFillDate:
          DateTime.fromMillisecondsSinceEpoch(map[ApiKeys.formFillDate]),
      handgripCost: map[ApiKeys.handgripCost]?.toInt() ?? 0,
      contrastOutterColor: map[ApiKeys.contrastOutterColor] ?? '',
      handgripAccessoryCost: map[ApiKeys.handgripAccessoryCost]?.toInt() ?? 0,
      customerDeadline:
          DateTime.fromMillisecondsSinceEpoch(map[ApiKeys.customerDeadline]),
      orderGroup: map[ApiKeys.orderGroup]?.toInt() ?? 0,
      topSewingThread: map[ApiKeys.topSewingThread] ?? '',
      subCursorCost: map[ApiKeys.subCursorCost]?.toInt() ?? 0,
      sewingThreadColor: map[ApiKeys.sewingThreadColor] ?? '',
      orderLineNum: map[ApiKeys.orderLineNum]?.toInt() ?? 0,
      handgripCode: map[ApiKeys.handgripCode] ?? '',
      orderId: map[ApiKeys.orderId]?.toInt() ?? 0,
      cursorRawMaterialCode: map[ApiKeys.cursorRawMaterialCode] ?? '',
      productionQuantity: map[ApiKeys.productionQuantity]?.toInt() ?? 0,
      overlayCost: map[ApiKeys.overlayCost]?.toInt() ?? 0,
      lazerNote: map[ApiKeys.lazerNote] ?? '',
      colorConfirmation: map[ApiKeys.colorConfirmation]?.toInt() ?? 0,
      exchangeRate: map[ApiKeys.exchangeRate]?.toInt() ?? 0,
      bottomSewingThread: map[ApiKeys.bottomSewingThread] ?? '',
      outterColor: map[ApiKeys.outterColor] ?? '',
      discountOperation: map[ApiKeys.discountOperation] ?? '',
      topStopOverlay: map[ApiKeys.topStopOverlay] ?? '',
      subCursorCode: map[ApiKeys.subCursorCode] ?? '',
      vatStatus: map[ApiKeys.vatStatus]?.toInt() ?? 0,
      handgripOvelay: map[ApiKeys.handgripOverlay] ?? '',
      billNo: map[ApiKeys.billNo]?.toInt() ?? 0,
      subHandgripCost: map[ApiKeys.subHandgripCost]?.toInt() ?? 0,
      colorCost: map[ApiKeys.colorCost]?.toInt() ?? 0,
      closingDate:
          DateTime.fromMillisecondsSinceEpoch(map[ApiKeys.closingDate]),
      vatTotal: map[ApiKeys.vatTotal]?.toDouble() ?? 0.0,
      colorReadyDate:
          DateTime.fromMillisecondsSinceEpoch(map[ApiKeys.colorReadyDate]),
      leftBottomSewingThread: map[ApiKeys.leftBottomSewingThread] ?? '',
      subCursorColor: map[ApiKeys.subCursorColor] ?? '',
      currencyTotal: map[ApiKeys.currencyTotal]?.toDouble() ?? 0.0,
      noteSilme: map[ApiKeys.noteSilme] ?? '',
      tlTotal: map[ApiKeys.tlTotal]?.toDouble() ?? 0.0,
      cursorCode: map[ApiKeys.cursorCode] ?? '',
      unitPrice: map[ApiKeys.unitPrice]?.toDouble() ?? 0.0,
      note2: map[ApiKeys.note2] ?? '',
      note1: map[ApiKeys.note1] ?? '',
      discountRate: map[ApiKeys.discountRate]?.toInt() ?? 0,
      stockType: map[ApiKeys.stockType] ?? '',
      topStop: map[ApiKeys.topStop] ?? '',
      clientCode: map[ApiKeys.clientCode] ?? '',
      handgripAccessoar: map[ApiKeys.handgripAccessoar] ?? '',
      colorReadyToUse: map[ApiKeys.colorReadyToUse] ?? '',
      discountStatus: map[ApiKeys.discountStatus]?.toInt() ?? 0,
      subOverlayCost: map[ApiKeys.subOverlayCost]?.toInt() ?? 0,
      colorNote: map[ApiKeys.colorNote] ?? '',
      subHandgripAccessoar: map[ApiKeys.subHandgripAccessoar] ?? '',
      contractPrice: map[ApiKeys.contractPrice]?.toInt() ?? 0,
      colorConfirmDate:
          DateTime.fromMillisecondsSinceEpoch(map[ApiKeys.colorConfirmDate]),
      vatRate: map[ApiKeys.vatRate]?.toInt() ?? 0,
      rightTopSewingThread: map[ApiKeys.rightTopSewingThread] ?? '',
      clientOrderNo: map[ApiKeys.clientOrderNo] ?? '',
      noteMine: map[ApiKeys.noteMine] ?? '',
      orderNote: map[ApiKeys.orderNote] ?? '',
      length: map[ApiKeys.length]?.toInt() ?? 0,
      lastShippedDate:
          DateTime.fromMillisecondsSinceEpoch(map[ApiKeys.lastShippedDate]),
      deadlineDate:
          DateTime.fromMillisecondsSinceEpoch(map[ApiKeys.deadlineDate]),
      outterMaterial: map[ApiKeys.outterMaterial] ?? '',
      cursorCost: map[ApiKeys.cursorCost]?.toInt() ?? 0,
      subHandgripCode: map[ApiKeys.subHandgripCode] ?? '',
      dipSeparator: map[ApiKeys.dipSeparator] ?? '',
      leftUpperSewingThread: map[ApiKeys.leftUpperSewingThread] ?? '',
      noteStone: map[ApiKeys.noteStone]?.toInt() ?? 0,
      lightType: map[ApiKeys.lightType] ?? '',
      lowerhandgripAccessoryPrice:
          map[ApiKeys.lowerhandgripAccessoryPrice]?.toInt() ?? 0,
      subStopOverlay: map[ApiKeys.subStopOverlay] ?? '',
      printStatus: map[ApiKeys.printStatus]?.toInt() ?? 0,
      filmStrip: map[ApiKeys.filmStrip] ?? '',
      otherStockCode: map[ApiKeys.otherStockCode] ?? '',
      noteSewing: map[ApiKeys.noteSewing] ?? '',
      note4: map[ApiKeys.note4] ?? '',
      note3: map[ApiKeys.note3] ?? '',
      unit: map[ApiKeys.unit] ?? '',
      deadlineEndDate:
          DateTime.fromMillisecondsSinceEpoch(map[ApiKeys.deadlineEndDate]),
      lineTotal: map[ApiKeys.lineTotal]?.toDouble() ?? 0.0,
    );
  }
}
