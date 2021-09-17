import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'money.g.dart';

/// {@template money}
/// Money fields can be signed or unsigned. Fields that do not explicitly
/// define whether they are signed or unsigned are considered unsigned and can
/// only hold positive amounts. For signed fields, the sign of the value
/// indicates the purpose of the money transfer. See Working with Monetary
/// Amounts for more information.
/// {@endtemplate}
@JsonSerializable()
class Money extends Equatable {
  /// @macro {@macro money}
  const Money({
    this.amount,
    this.currency,
  });

  /// Converts a [Map] to an [Money]
  factory Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);

  /// Converts a [Money] to a [Map]
  Map<String, dynamic> toJson() => _$MoneyToJson(this);

  /// The amount of money, in the smallest denomination of the currency
  /// indicated by currency. For example, when currency is USD, amount is in
  /// cents. Monetary amounts can be positive or negative. See the specific
  /// field description to determine the meaning of the sign in a particular
  /// case.
  final int? amount;

  /// case.
  final Currency? currency;

  @override
  List<Object?> get props => [amount, currency];
}

/// Indicates the associated currency for an amount of money.
enum Currency {
  /// Currency of type UNKNOWN_CURRENCY
  @JsonValue('UNKNOWN_CURRENCY')
  unknownCurrency,

  /// Currency of type unitedArabEmiratesDirham
  @JsonValue('AED')
  unitedArabEmiratesDirham,

  /// Currency of type afghanAfghani
  @JsonValue('AFN')
  afghanAfghani,

  /// Currency of type albanianLek
  @JsonValue('ALL')
  albanianLek,

  /// Currency of type armenianDram
  @JsonValue('AMD')
  armenianDram,

  /// Currency of type netherlandsAntilleanGuilder
  @JsonValue('ANG')
  netherlandsAntilleanGuilder,

  /// Currency of type angolanKwanza
  @JsonValue('AOA')
  angolanKwanza,

  /// Currency of type argentinePeso
  @JsonValue('ARS')
  argentinePeso,

  /// Currency of type australianDollar
  @JsonValue('AUD')
  australianDollar,

  /// Currency of type arubanFlorin
  @JsonValue('AWG')
  arubanFlorin,

  /// Currency of type azerbaijaniManat
  @JsonValue('AZN')
  azerbaijaniManat,

  /// Currency of type bosniaAndHerzegovinaConvertibleMark
  @JsonValue('BAM')
  bosniaAndHerzegovinaConvertibleMark,

  /// Currency of type barbadosDollar
  @JsonValue('BBD')
  barbadosDollar,

  /// Currency of type bangladeshiTaka
  @JsonValue('BDT')
  bangladeshiTaka,

  /// Currency of type bulgarianLev
  @JsonValue('BGN')
  bulgarianLev,

  /// Currency of type bahrainiDinar
  @JsonValue('BHD')
  bahrainiDinar,

  /// Currency of type burundianFranc
  @JsonValue('BIF')
  burundianFranc,

  /// Currency of type bermudianDollar
  @JsonValue('BMD')
  bermudianDollar,

  /// Currency of type bruneiDollar
  @JsonValue('BND')
  bruneiDollar,

  /// Currency of type boliviano
  @JsonValue('BOB')
  boliviano,

  /// Currency of type bolivianMvdol
  @JsonValue('BOV')
  bolivianMvdol,

  /// Currency of type brazilianReal
  @JsonValue('BRL')
  brazilianReal,

  /// Currency of type bahamianDollar
  @JsonValue('BSD')
  bahamianDollar,

  /// Currency of type bhutaneseNgultrum
  @JsonValue('BTN')
  bhutaneseNgultrum,

  /// Currency of type botswanaPula
  @JsonValue('BWP')
  botswanaPula,

  /// Currency of type belarusianRuble
  @JsonValue('BYR')
  belarusianRuble,

  /// Currency of type belizeDollar
  @JsonValue('BZD')
  belizeDollar,

  /// Currency of type canadianDollar
  @JsonValue('CAD')
  canadianDollar,

  /// Currency of type congoleseFranc
  @JsonValue('CDF')
  congoleseFranc,

  /// Currency of type wirEuro
  @JsonValue('CHE')
  wirEuro,

  /// Currency of type swissFranc
  @JsonValue('CHF')
  swissFranc,

  /// Currency of type wirFranc
  @JsonValue('CHW')
  wirFranc,

  /// Currency of type unidadDeFomento
  @JsonValue('CLF')
  unidadDeFomento,

  /// Currency of type chileanPeso
  @JsonValue('CLP')
  chileanPeso,

  /// Currency of type chineseYuan
  @JsonValue('CNY')
  chineseYuan,

  /// Currency of type colombianPeso
  @JsonValue('COP')
  colombianPeso,

  /// Currency of type unidadDeValorReal
  @JsonValue('COU')
  unidadDeValorReal,

  /// Currency of type costaRicanColon
  @JsonValue('CRC')
  costaRicanColon,

  /// Currency of type cubanConvertiblePeso
  @JsonValue('CUC')
  cubanConvertiblePeso,

  /// Currency of type cubanPeso
  @JsonValue('CUP')
  cubanPeso,

  /// Currency of type capeVerdeanEscudo
  @JsonValue('CVE')
  capeVerdeanEscudo,

  /// Currency of type czechKoruna
  @JsonValue('CZK')
  czechKoruna,

  /// Currency of type djiboutianFranc
  @JsonValue('DJF')
  djiboutianFranc,

  /// Currency of type danishKrone
  @JsonValue('DKK')
  danishKrone,

  /// Currency of type dominicanPeso
  @JsonValue('DOP')
  dominicanPeso,

  /// Currency of type algerianDinar
  @JsonValue('DZD')
  algerianDinar,

  /// Currency of type egyptianPound
  @JsonValue('EGP')
  egyptianPound,

  /// Currency of type eritreanNakfa
  @JsonValue('ERN')
  eritreanNakfa,

  /// Currency of type ethiopianBirr
  @JsonValue('ETB')
  ethiopianBirr,

  /// Currency of type euro
  @JsonValue('EUR')
  euro,

  /// Currency of type fijiDollar
  @JsonValue('FJD')
  fijiDollar,

  /// Currency of type falklandIslandsPound
  @JsonValue('FKP')
  falklandIslandsPound,

  /// Currency of type poundSterling
  @JsonValue('GBP')
  poundSterling,

  /// Currency of type georgianLari
  @JsonValue('GEL')
  georgianLari,

  /// Currency of type ghanaianCedi
  @JsonValue('GHS')
  ghanaianCedi,

  /// Currency of type gibraltarPound
  @JsonValue('GIP')
  gibraltarPound,

  /// Currency of type gambianDalasi
  @JsonValue('GMD')
  gambianDalasi,

  /// Currency of type guineanFranc
  @JsonValue('GNF')
  guineanFranc,

  /// Currency of type guatemalanQuetzal
  @JsonValue('GTQ')
  guatemalanQuetzal,

  /// Currency of type guyaneseDollar
  @JsonValue('GYD')
  guyaneseDollar,

  /// Currency of type hongKongDollar
  @JsonValue('HKD')
  hongKongDollar,

  /// Currency of type honduranLempira
  @JsonValue('HNL')
  honduranLempira,

  /// Currency of type croatianKuna
  @JsonValue('HRK')
  croatianKuna,

  /// Currency of type haitianGourde
  @JsonValue('HTG')
  haitianGourde,

  /// Currency of type hungarianForint
  @JsonValue('HUF')
  hungarianForint,

  /// Currency of type indonesianRupiah
  @JsonValue('IDR')
  indonesianRupiah,

  /// Currency of type israeliNewShekel
  @JsonValue('ILS')
  israeliNewShekel,

  /// Currency of type indianRupee
  @JsonValue('INR')
  indianRupee,

  /// Currency of type iraqiDinar
  @JsonValue('IQD')
  iraqiDinar,

  /// Currency of type iranianRial
  @JsonValue('IRR')
  iranianRial,

  /// Currency of type icelandicKróna
  @JsonValue('ISK')
  icelandicKrona,

  /// Currency of type jamaicanDollar
  @JsonValue('JMD')
  jamaicanDollar,

  /// Currency of type jordanianDinar
  @JsonValue('JOD')
  jordanianDinar,

  /// Currency of type japaneseYen
  @JsonValue('JPY')
  japaneseYen,

  /// Currency of type kenyanShilling
  @JsonValue('KES')
  kenyanShilling,

  /// Currency of type kyrgyzstaniSom
  @JsonValue('KGS')
  kyrgyzstaniSom,

  /// Currency of type cambodianRiel
  @JsonValue('KHR')
  cambodianRiel,

  /// Currency of type comoroFranc
  @JsonValue('KMF')
  comoroFranc,

  /// Currency of type northKoreanWon
  @JsonValue('KPW')
  northKoreanWon,

  /// Currency of type southKoreanWon
  @JsonValue('KRW')
  southKoreanWon,

  /// Currency of type kuwaitiDinar
  @JsonValue('KWD')
  kuwaitiDinar,

  /// Currency of type caymanIslandsDollar
  @JsonValue('KYD')
  caymanIslandsDollar,

  /// Currency of type kazakhstaniTenge
  @JsonValue('KZT')
  kazakhstaniTenge,

  /// Currency of type laoKip
  @JsonValue('LAK')
  laoKip,

  /// Currency of type lebanesePound
  @JsonValue('LBP')
  lebanesePound,

  /// Currency of type sriLankanRupee
  @JsonValue('LKR')
  sriLankanRupee,

  /// Currency of type liberianDollar
  @JsonValue('LRD')
  liberianDollar,

  /// Currency of type lesothoLoti
  @JsonValue('LSL')
  lesothoLoti,

  /// Currency of type lithuanianLitas
  @JsonValue('LTL')
  lithuanianLitas,

  /// Currency of type latvianLats
  @JsonValue('LVL')
  latvianLats,

  /// Currency of type libyanDinar
  @JsonValue('LYD')
  libyanDinar,

  /// Currency of type moroccanDirham
  @JsonValue('MAD')
  moroccanDirham,

  /// Currency of type moldovanLeu
  @JsonValue('MDL')
  moldovanLeu,

  /// Currency of type malagasyAriary
  @JsonValue('MGA')
  malagasyAriary,

  /// Currency of type macedonianDenar
  @JsonValue('MKD')
  macedonianDenar,

  /// Currency of type myanmarKyat
  @JsonValue('MMK')
  myanmarKyat,

  /// Currency of type mongolianTögrög
  @JsonValue('MNT')
  mongolianTogrog,

  /// Currency of type macanesePataca
  @JsonValue('MOP')
  macanesePataca,

  /// Currency of type mauritanianOuguiya
  @JsonValue('MRO')
  mauritanianOuguiya,

  /// Currency of type mauritianRupee
  @JsonValue('MUR')
  mauritianRupee,

  /// Currency of type maldivianRufiyaa
  @JsonValue('MVR')
  maldivianRufiyaa,

  /// Currency of type malawianKwacha
  @JsonValue('MWK')
  malawianKwacha,

  /// Currency of type mexicanPeso
  @JsonValue('MXN')
  mexicanPeso,

  /// Currency of type mexicanUnidadDeInversion
  @JsonValue('MXV')
  mexicanUnidadDeInversion,

  /// Currency of type malaysianRinggit
  @JsonValue('MYR')
  malaysianRinggit,

  /// Currency of type mozambicanMetical
  @JsonValue('MZN')
  mozambicanMetical,

  /// Currency of type namibianDollar
  @JsonValue('NAD')
  namibianDollar,

  /// Currency of type nigerianNaira
  @JsonValue('NGN')
  nigerianNaira,

  /// Currency of type nicaraguanCórdoba
  @JsonValue('NIO')
  nicaraguanCordoba,

  /// Currency of type norwegianKrone
  @JsonValue('NOK')
  norwegianKrone,

  /// Currency of type nepaleseRupee
  @JsonValue('NPR')
  nepaleseRupee,

  /// Currency of type newZealandDollar
  @JsonValue('NZD')
  newZealandDollar,

  /// Currency of type omaniRial
  @JsonValue('OMR')
  omaniRial,

  /// Currency of type panamanianBalboa
  @JsonValue('PAB')
  panamanianBalboa,

  /// Currency of type peruvianSol
  @JsonValue('PEN')
  peruvianSol,

  /// Currency of type papuaNewGuineanKina
  @JsonValue('PGK')
  papuaNewGuineanKina,

  /// Currency of type philippinePeso
  @JsonValue('PHP')
  philippinePeso,

  /// Currency of type pakistaniRupee
  @JsonValue('PKR')
  pakistaniRupee,

  /// Currency of type polishZłoty
  @JsonValue('PLN')
  polishZloty,

  /// Currency of type paraguayanGuaraní
  @JsonValue('PYG')
  paraguayanGuarani,

  /// Currency of type qatariRiyal
  @JsonValue('QAR')
  qatariRiyal,

  /// Currency of type romanianLeu
  @JsonValue('RON')
  romanianLeu,

  /// Currency of type serbianDinar
  @JsonValue('RSD')
  serbianDinar,

  /// Currency of type russianRuble
  @JsonValue('RUB')
  russianRuble,

  /// Currency of type rwandanFranc
  @JsonValue('RWF')
  rwandanFranc,

  /// Currency of type saudiRiyal
  @JsonValue('SAR')
  saudiRiyal,

  /// Currency of type solomonIslandsDollar
  @JsonValue('SBD')
  solomonIslandsDollar,

  /// Currency of type seychellesRupee
  @JsonValue('SCR')
  seychellesRupee,

  /// Currency of type sudanesePound
  @JsonValue('SDG')
  sudanesePound,

  /// Currency of type swedishKrona
  @JsonValue('SEK')
  swedishKrona,

  /// Currency of type singaporeDollar
  @JsonValue('SGD')
  singaporeDollar,

  /// Currency of type saintHelenaPound
  @JsonValue('SHP')
  saintHelenaPound,

  /// Currency of type sierraLeoneanLeone
  @JsonValue('SLL')
  sierraLeoneanLeone,

  /// Currency of type somaliShilling
  @JsonValue('SOS')
  somaliShilling,

  /// Currency of type surinameseDollar
  @JsonValue('SRD')
  surinameseDollar,

  /// Currency of type southSudanesePound
  @JsonValue('SSP')
  southSudanesePound,

  /// Currency of type sãoToméAndPríncipeDobra
  @JsonValue('STD')
  saoTomeAndPrincipeDobra,

  /// Currency of type salvadoranColón
  @JsonValue('SVC')
  salvadoranColon,

  /// Currency of type syrianPound
  @JsonValue('SYP')
  syrianPound,

  /// Currency of type swaziLilangeni
  @JsonValue('SZL')
  swaziLilangeni,

  /// Currency of type thaiBaht
  @JsonValue('THB')
  thaiBaht,

  /// Currency of type tajikstaniSomoni
  @JsonValue('TJS')
  tajikstaniSomoni,

  /// Currency of type turkmenistanManat
  @JsonValue('TMT')
  turkmenistanManat,

  /// Currency of type tunisianDinar
  @JsonValue('TND')
  tunisianDinar,

  /// Currency of type tonganPaAnga
  @JsonValue('TOP')
  tonganPaAnga,

  /// Currency of type turkishLira
  @JsonValue('TRY')
  turkishLira,

  /// Currency of type trinidadAndTobagoDollar
  @JsonValue('TTD')
  trinidadAndTobagoDollar,

  /// Currency of type newTaiwanDollar
  @JsonValue('TWD')
  newTaiwanDollar,

  /// Currency of type tanzanianShilling
  @JsonValue('TZS')
  tanzanianShilling,

  /// Currency of type ukrainianHryvnia
  @JsonValue('UAH')
  ukrainianHryvnia,

  /// Currency of type ugandanShilling
  @JsonValue('UGX')
  ugandanShilling,

  /// Currency of type unitedStatesDollar
  @JsonValue('USD')
  unitedStatesDollar,

  /// Currency of type unitedStatesDollarNextDay
  @JsonValue('USN')
  unitedStatesDollarNextDay,

  /// Currency of type unitedStatesDollarSameDay
  @JsonValue('USS')
  unitedStatesDollarSameDay,

  /// Currency of type uruguayPesoEnUnidedadesIndexadas
  @JsonValue('UYI')
  uruguayPesoEnUnidedadesIndexadas,

  /// Currency of type uruguyanPeso
  @JsonValue('UYU')
  uruguyanPeso,

  /// Currency of type uzbekistanSom
  @JsonValue('UZS')
  uzbekistanSom,

  /// Currency of type venezuelanBolívarSoberano
  @JsonValue('VEF')
  venezuelanBolivarSoberano,

  /// Currency of type vietnameseĐồng
  @JsonValue('VND')
  vietnameseDong,

  /// Currency of type vanuatuVatu
  @JsonValue('VUV')
  vanuatuVatu,

  /// Currency of type samoanTala
  @JsonValue('WST')
  samoanTala,

  /// Currency of type cfaFrancBeac
  @JsonValue('XAF')
  cfaFrancBeac,

  /// Currency of type silver
  @JsonValue('XAG')
  silver,

  /// Currency of type gold
  @JsonValue('XAU')
  gold,

  /// Currency of type europeanCompositeUnit
  @JsonValue('XBA')
  europeanCompositeUnit,

  /// Currency of type europeanMonetaryUnit
  @JsonValue('XBB')
  europeanMonetaryUnit,

  /// Currency of type europeanUnitOfAccount_9
  @JsonValue('XBC')
  europeanUnitOfAccount_9,

  /// Currency of type europeanUnitOfAccount_17
  @JsonValue('XBD')
  europeanUnitOfAccount_17,

  /// Currency of type eastCaribbeanDollar
  @JsonValue('XCD')
  eastCaribbeanDollar,

  /// Currency of type specialDrawingRightsInternationalMonetaryFund
  @JsonValue('XDR')
  specialDrawingRightsInternationalMonetaryFund,

  /// Currency of type cfaFrancBceao
  @JsonValue('XOF')
  cfaFrancBceao,

  /// Currency of type palladium
  @JsonValue('XPD')
  palladium,

  /// Currency of type cfpFranc
  @JsonValue('XPF')
  cfpFranc,

  /// Currency of type platinum
  @JsonValue('XPT')
  platinum,

  /// Currency of type codeReservedForTesting
  @JsonValue('XTS')
  codeReservedForTesting,

  /// Currency of type noCurrency
  @JsonValue('XXX')
  noCurrency,

  /// Currency of type yemeniRial
  @JsonValue('YER')
  yemeniRial,

  /// Currency of type southAfricanRand
  @JsonValue('ZAR')
  southAfricanRand,

  /// Currency of type zambianKwacha
  @JsonValue('ZMK')
  zambianKwacha,

  /// Currency of type bitcoin
  @JsonValue('BTC')
  bitcoin,
}
