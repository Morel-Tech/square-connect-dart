// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Money _$MoneyFromJson(Map<String, dynamic> json) => Money(
      amount: json['amount'] as int?,
      currency: _$enumDecodeNullable(_$CurrencyEnumMap, json['currency']),
    );

Map<String, dynamic> _$MoneyToJson(Money instance) => <String, dynamic>{
      'amount': instance.amount,
      'currency': _$CurrencyEnumMap[instance.currency],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$CurrencyEnumMap = {
  Currency.unknownCurrency: 'UNKNOWN_CURRENCY',
  Currency.unitedArabEmiratesDirham: 'AED',
  Currency.afghanAfghani: 'AFN',
  Currency.albanianLek: 'ALL',
  Currency.armenianDram: 'AMD',
  Currency.netherlandsAntilleanGuilder: 'ANG',
  Currency.angolanKwanza: 'AOA',
  Currency.argentinePeso: 'ARS',
  Currency.australianDollar: 'AUD',
  Currency.arubanFlorin: 'AWG',
  Currency.azerbaijaniManat: 'AZN',
  Currency.bosniaAndHerzegovinaConvertibleMark: 'BAM',
  Currency.barbadosDollar: 'BBD',
  Currency.bangladeshiTaka: 'BDT',
  Currency.bulgarianLev: 'BGN',
  Currency.bahrainiDinar: 'BHD',
  Currency.burundianFranc: 'BIF',
  Currency.bermudianDollar: 'BMD',
  Currency.bruneiDollar: 'BND',
  Currency.boliviano: 'BOB',
  Currency.bolivianMvdol: 'BOV',
  Currency.brazilianReal: 'BRL',
  Currency.bahamianDollar: 'BSD',
  Currency.bhutaneseNgultrum: 'BTN',
  Currency.botswanaPula: 'BWP',
  Currency.belarusianRuble: 'BYR',
  Currency.belizeDollar: 'BZD',
  Currency.canadianDollar: 'CAD',
  Currency.congoleseFranc: 'CDF',
  Currency.wirEuro: 'CHE',
  Currency.swissFranc: 'CHF',
  Currency.wirFranc: 'CHW',
  Currency.unidadDeFomento: 'CLF',
  Currency.chileanPeso: 'CLP',
  Currency.chineseYuan: 'CNY',
  Currency.colombianPeso: 'COP',
  Currency.unidadDeValorReal: 'COU',
  Currency.costaRicanColon: 'CRC',
  Currency.cubanConvertiblePeso: 'CUC',
  Currency.cubanPeso: 'CUP',
  Currency.capeVerdeanEscudo: 'CVE',
  Currency.czechKoruna: 'CZK',
  Currency.djiboutianFranc: 'DJF',
  Currency.danishKrone: 'DKK',
  Currency.dominicanPeso: 'DOP',
  Currency.algerianDinar: 'DZD',
  Currency.egyptianPound: 'EGP',
  Currency.eritreanNakfa: 'ERN',
  Currency.ethiopianBirr: 'ETB',
  Currency.euro: 'EUR',
  Currency.fijiDollar: 'FJD',
  Currency.falklandIslandsPound: 'FKP',
  Currency.poundSterling: 'GBP',
  Currency.georgianLari: 'GEL',
  Currency.ghanaianCedi: 'GHS',
  Currency.gibraltarPound: 'GIP',
  Currency.gambianDalasi: 'GMD',
  Currency.guineanFranc: 'GNF',
  Currency.guatemalanQuetzal: 'GTQ',
  Currency.guyaneseDollar: 'GYD',
  Currency.hongKongDollar: 'HKD',
  Currency.honduranLempira: 'HNL',
  Currency.croatianKuna: 'HRK',
  Currency.haitianGourde: 'HTG',
  Currency.hungarianForint: 'HUF',
  Currency.indonesianRupiah: 'IDR',
  Currency.israeliNewShekel: 'ILS',
  Currency.indianRupee: 'INR',
  Currency.iraqiDinar: 'IQD',
  Currency.iranianRial: 'IRR',
  Currency.icelandicKrona: 'ISK',
  Currency.jamaicanDollar: 'JMD',
  Currency.jordanianDinar: 'JOD',
  Currency.japaneseYen: 'JPY',
  Currency.kenyanShilling: 'KES',
  Currency.kyrgyzstaniSom: 'KGS',
  Currency.cambodianRiel: 'KHR',
  Currency.comoroFranc: 'KMF',
  Currency.northKoreanWon: 'KPW',
  Currency.southKoreanWon: 'KRW',
  Currency.kuwaitiDinar: 'KWD',
  Currency.caymanIslandsDollar: 'KYD',
  Currency.kazakhstaniTenge: 'KZT',
  Currency.laoKip: 'LAK',
  Currency.lebanesePound: 'LBP',
  Currency.sriLankanRupee: 'LKR',
  Currency.liberianDollar: 'LRD',
  Currency.lesothoLoti: 'LSL',
  Currency.lithuanianLitas: 'LTL',
  Currency.latvianLats: 'LVL',
  Currency.libyanDinar: 'LYD',
  Currency.moroccanDirham: 'MAD',
  Currency.moldovanLeu: 'MDL',
  Currency.malagasyAriary: 'MGA',
  Currency.macedonianDenar: 'MKD',
  Currency.myanmarKyat: 'MMK',
  Currency.mongolianTogrog: 'MNT',
  Currency.macanesePataca: 'MOP',
  Currency.mauritanianOuguiya: 'MRO',
  Currency.mauritianRupee: 'MUR',
  Currency.maldivianRufiyaa: 'MVR',
  Currency.malawianKwacha: 'MWK',
  Currency.mexicanPeso: 'MXN',
  Currency.mexicanUnidadDeInversion: 'MXV',
  Currency.malaysianRinggit: 'MYR',
  Currency.mozambicanMetical: 'MZN',
  Currency.namibianDollar: 'NAD',
  Currency.nigerianNaira: 'NGN',
  Currency.nicaraguanCordoba: 'NIO',
  Currency.norwegianKrone: 'NOK',
  Currency.nepaleseRupee: 'NPR',
  Currency.newZealandDollar: 'NZD',
  Currency.omaniRial: 'OMR',
  Currency.panamanianBalboa: 'PAB',
  Currency.peruvianSol: 'PEN',
  Currency.papuaNewGuineanKina: 'PGK',
  Currency.philippinePeso: 'PHP',
  Currency.pakistaniRupee: 'PKR',
  Currency.polishZloty: 'PLN',
  Currency.paraguayanGuarani: 'PYG',
  Currency.qatariRiyal: 'QAR',
  Currency.romanianLeu: 'RON',
  Currency.serbianDinar: 'RSD',
  Currency.russianRuble: 'RUB',
  Currency.rwandanFranc: 'RWF',
  Currency.saudiRiyal: 'SAR',
  Currency.solomonIslandsDollar: 'SBD',
  Currency.seychellesRupee: 'SCR',
  Currency.sudanesePound: 'SDG',
  Currency.swedishKrona: 'SEK',
  Currency.singaporeDollar: 'SGD',
  Currency.saintHelenaPound: 'SHP',
  Currency.sierraLeoneanLeone: 'SLL',
  Currency.somaliShilling: 'SOS',
  Currency.surinameseDollar: 'SRD',
  Currency.southSudanesePound: 'SSP',
  Currency.saoTomeAndPrincipeDobra: 'STD',
  Currency.salvadoranColon: 'SVC',
  Currency.syrianPound: 'SYP',
  Currency.swaziLilangeni: 'SZL',
  Currency.thaiBaht: 'THB',
  Currency.tajikstaniSomoni: 'TJS',
  Currency.turkmenistanManat: 'TMT',
  Currency.tunisianDinar: 'TND',
  Currency.tonganPaAnga: 'TOP',
  Currency.turkishLira: 'TRY',
  Currency.trinidadAndTobagoDollar: 'TTD',
  Currency.newTaiwanDollar: 'TWD',
  Currency.tanzanianShilling: 'TZS',
  Currency.ukrainianHryvnia: 'UAH',
  Currency.ugandanShilling: 'UGX',
  Currency.unitedStatesDollar: 'USD',
  Currency.unitedStatesDollarNextDay: 'USN',
  Currency.unitedStatesDollarSameDay: 'USS',
  Currency.uruguayPesoEnUnidedadesIndexadas: 'UYI',
  Currency.uruguyanPeso: 'UYU',
  Currency.uzbekistanSom: 'UZS',
  Currency.venezuelanBolivarSoberano: 'VEF',
  Currency.vietnameseDong: 'VND',
  Currency.vanuatuVatu: 'VUV',
  Currency.samoanTala: 'WST',
  Currency.cfaFrancBeac: 'XAF',
  Currency.silver: 'XAG',
  Currency.gold: 'XAU',
  Currency.europeanCompositeUnit: 'XBA',
  Currency.europeanMonetaryUnit: 'XBB',
  Currency.europeanUnitOfAccount_9: 'XBC',
  Currency.europeanUnitOfAccount_17: 'XBD',
  Currency.eastCaribbeanDollar: 'XCD',
  Currency.specialDrawingRightsInternationalMonetaryFund: 'XDR',
  Currency.cfaFrancBceao: 'XOF',
  Currency.palladium: 'XPD',
  Currency.cfpFranc: 'XPF',
  Currency.platinum: 'XPT',
  Currency.codeReservedForTesting: 'XTS',
  Currency.noCurrency: 'XXX',
  Currency.yemeniRial: 'YER',
  Currency.southAfricanRand: 'ZAR',
  Currency.zambianKwacha: 'ZMK',
  Currency.bitcoin: 'BTC',
};
