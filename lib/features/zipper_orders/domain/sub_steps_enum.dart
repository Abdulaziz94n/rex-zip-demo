///
///
/// The [Order] of the Substeps is Important please do not modify

enum SubSteps {
  zipperKind('fermuar türü'),
  zipperGroup('fermuar grubu'),
  zipperType('fermuar türü'),
  zipperCode('fermuar kodu'),
  seperator('dipli/separe'),
  bottomStopBox('alt stop-kutu pim'),
  outterType('diş tipi'),
  outterColor('diş rengi'),
  outterLeftColor('sol diş rengi(pim)'),
  outterRightColor('sağ diş rengi(kutu)'),
  sewingThreadColor('dikiş ip rengi'),
  leftSewingThreadColor('sol dikiş ip rengi(pim)'),
  rightSewingThreadColor('sağ dikiş ip rengi(kutu)'),
  cursorType('kürsör türü'),
  cursor('kürsör'),
  cursorOverlayGroup('kürsör kap grubu'),
  cursorOverlayColor('kürsör kap renği'),
  subCursorType('alt kürsör türü'),
  subCursor('alt kürsör'),
  subCursorOverlayGroup('alt kürsör kap grubu'),
  subCursorOverlayColor('alt kürsör kap renği'),
  handgripGroup('elcik grubu'),
  handgrips('elcikler'),
  handgripOverlayGroup('elcik kap grubu'),
  handgripOverlayColor('elcik kap renği'),
  mineSilmeColor('mine - silme renği'),
  subHandgripGroup('alt elcik grubu'),
  subHandgrips('alt elcikler'),
  subHandgripOverlayGroup('alt elcik kap grubu'),
  subHandgripOverlayColor('alt elcik kap renği'),
  subMineSilmeColor('alt mine - silme renği'),
  topStop('üst stop seçimi'),
  topBottomStopConfig('alt stop - kutu pim \n üst stop kap renği'),
  colorLengthCount('renk/boy/adet'),
  details('detay');

  const SubSteps(this.text);
  final String text;
}
