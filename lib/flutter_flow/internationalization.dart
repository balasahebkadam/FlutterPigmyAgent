import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'hi', 'mr'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? hiText = '',
    String? mrText = '',
  }) =>
      [enText, hiText, mrText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    '0cndhczy': {
      'en': ' Date',
      'hi': 'तारीख',
      'mr': 'तारीख',
    },
    'spk5ybjh': {
      'en': 'PIN',
      'hi': 'पिन',
      'mr': 'पिन',
    },
    'azhcsvjv': {
      'en': 'Login',
      'hi': 'लॉग इन करें',
      'mr': 'लॉगिन करा',
    },
    '8vzmnajz': {
      'en': 'OR',
      'hi': 'या',
      'mr': 'किंवा',
    },
    'ykcszoh8': {
      'en': 'Date is required',
      'hi': 'तारीख आवश्यक है',
      'mr': 'तारीख आवश्यक आहे',
    },
    'nr9z0ha7': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'a856iftr': {
      'en': 'Pin is required',
      'hi': 'पिन आवश्यक है',
      'mr': 'पिन आवश्यक आहे',
    },
    'lo5u2ngl': {
      'en': 'Enter 4 digit PIN',
      'hi': '4 अंक का पिन दर्ज करें',
      'mr': '४ अंकी पिन एंटर करा',
    },
    '9177i3q1': {
      'en': 'Enter 4 digit PIN',
      'hi': '4 अंक का पिन दर्ज करें',
      'mr': '४ अंकी पिन एंटर करा',
    },
    'dygb0ln4': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'obwsr158': {
      'en': 'Click Here To Register',
      'hi': 'क्लिक करें यहाँ रजिस्टर करने के लिए.',
      'mr': 'नोंदणी करण्यासाठी येथे क्लिक करा.',
    },
    'aburcvny': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुखपृष्ठ',
    },
  },
  // Register
  {
    'aypk7oh2': {
      'en': 'Enter 10-digit Mobile Number',
      'hi': '10 अंकों का मोबाइल नंबर दर्ज करें',
      'mr': '१०-अंकी मोबाइल नंबर एंटर करा',
    },
    'xfa1ulci': {
      'en': 'Enter Branch Id / Number',
      'hi': 'शाखा आईडी/नंबर दर्ज करें',
      'mr': 'शाखा आयडी / क्रमांक प्रविष्ट करा',
    },
    '1il98ra3': {
      'en': 'Enter Agent Id / Number',
      'hi': 'एजेंट आईडी/नंबर दर्ज करें',
      'mr': 'एजंट आयडी / नंबर एंटर करा',
    },
    'uq42nuqa': {
      'en': 'Enter 4-digit PIN',
      'hi': '4-अंकीय पिन दर्ज करें',
      'mr': '४-अंकी पिन एंटर करा',
    },
    'm00jfme2': {
      'en': 'Enter  Server Address / Name',
      'hi': 'सर्वर पता / नाम दर्ज करें',
      'mr': 'सर्व्हर पत्ता / नाव प्रविष्ट करा',
    },
    'cd2yus12': {
      'en': 'Enter Security Code',
      'hi': 'सुरक्षा कोड दर्ज करें',
      'mr': 'सुरक्षा कोड एंटर करा',
    },
    'rv3fm3at': {
      'en': 'Enter IP Name',
      'hi': 'आईपी ​​नाम दर्ज करें',
      'mr': 'आयपी नाव प्रविष्ट करा',
    },
    'qa624ayk': {
      'en': 'Submit',
      'hi': 'सबमिट',
      'mr': 'सबमिट ',
    },
    '8k14wnbt': {
      'en': ' 10-digit Mobile Number is required',
      'hi': '10 अंकों का मोबाइल नंबर आवश्यक है',
      'mr': '१०-अंकी मोबाइल नंबर आवश्यक आहे',
    },
    '96beqdrl': {
      'en': 'Enter Valid 10 digit Mobile Number',
      'hi': 'वैध 10 अंकों का मोबाइल नंबर दर्ज करें',
      'mr': 'वैध १० अंकी मोबाइल नंबर एंटर करा',
    },
    's5ybc4az': {
      'en': 'Enter Valid 10 digit Mobile Number',
      'hi': 'वैध 10 अंकों का मोबाइल नंबर दर्ज करें',
      'mr': 'वैध १० अंकी मोबाइल नंबर एंटर करा',
    },
    'uus85usy': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'hsq9nr9j': {
      'en': ' Branch Id / Number is required',
      'hi': 'शाखा आईडी/नंबर आवश्यक है',
      'mr': 'शाखा आयडी / क्रमांक आवश्यक आहे.',
    },
    'mn2yv1lb': {
      'en': 'Enter Valid Branch ID',
      'hi': 'मान्य शाखा आईडी दर्ज करें',
      'mr': 'वैध शाखा आयडी एंटर करा',
    },
    'fcb906og': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'ytrtu48q': {
      'en': ' Agent Id / Number is required',
      'hi': 'एजेंट आईडी/नंबर आवश्यक है',
      'mr': 'एजंट आयडी / नंबर आवश्यक आहे',
    },
    '5kcm1o2r': {
      'en': 'Enter Valid Agent ID',
      'hi': 'मान्य एजेंट आईडी दर्ज करें',
      'mr': 'वैध एजंट आयडी एंटर करा',
    },
    'qjeo88f5': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'b8ay92kn': {
      'en': ' 4-digit PIN is required',
      'hi': '4-अंकीय पिन आवश्यक है',
      'mr': '४-अंकी पिन आवश्यक आहे',
    },
    'ywyjox8e': {
      'en': 'Pin  can\'t be more than 4 digit',
      'hi': 'पिन 4 अंकों से अधिक नहीं हो सकता',
      'mr': 'पिन ४ अंकांपेक्षा जास्त असू शकत नाही.',
    },
    'njfmbgra': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'zsgcvmka': {
      'en': ' Server Address / Name is required',
      'hi': 'सर्वर पता/नाम आवश्यक है',
      'mr': 'सर्व्हर पत्ता / नाव आवश्यक आहे.',
    },
    'pcwostgw': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'p9v8639z': {
      'en': 'Security Code is required',
      'hi': 'सुरक्षा कोड आवश्यक है',
      'mr': 'सुरक्षा कोड आवश्यक आहे',
    },
    'nwl5ubx4': {
      'en': 'Enter  6 digit Security code',
      'hi': '6 अंकों का सुरक्षा कोड दर्ज करें',
      'mr': '६ अंकी सुरक्षा कोड एंटर करा',
    },
    '2zqlpoek': {
      'en': 'Enter  6 digit Security code',
      'hi': '6 अंकों का सुरक्षा कोड दर्ज करें',
      'mr': '६ अंकी सुरक्षा कोड एंटर करा',
    },
    'jx9ke7tp': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'hy7p99ru': {
      'en': ' IP Name is required',
      'hi': 'आईपी ​​नाम आवश्यक है',
      'mr': 'आयपी नाव आवश्यक आहे.',
    },
    '88b8k75w': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'pg93f625': {
      'en': 'Register',
      'hi': 'पंजीकरण करवाना',
      'mr': 'नोंदणी करा',
    },
    'npjxv6zb': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुखपृष्ठ',
    },
  },
  // DashboardPage
  {
    '89l2gelt': {
      'en': 'Collection Receipt',
      'hi': 'डेली कलेक्शन रसीद',
      'mr': 'डेली कलेक्शन पावती',
    },
    'pggbybt3': {
      'en': 'Collection List',
      'hi': 'कलेक्शन सूची',
      'mr': 'कलेक्शन यादी',
    },
    '3gl6t9ok': {
      'en': 'Close Collection',
      'hi': 'क्लोज कलेक्शन',
      'mr': 'क्लोज कलेक्शन',
    },
    'u5qdnz87': {
      'en': 'Submit Collection',
      'hi': 'सबमिट कलेक्शन',
      'mr': 'सबमिट कलेक्शन',
    },
    'a7obid5f': {
      'en': 'New Account',
      'hi': 'नया खाता',
      'mr': 'नवीन खाते',
    },
    'l5amn8ur': {
      'en': 'Member List',
      'hi': 'सदस्य सूची',
      'mr': 'सदस्य यादी',
    },
    'h83m4dio': {
      'en': 'RD Receipt',
      'hi': 'आरडी कलेक्शन रसीद',
      'mr': 'आरडी कलेक्शन पावती',
    },
    'lpekcli9': {
      'en': 'Loan Collection Receipt',
      'hi': 'लोन कलेक्शन रसीद ',
      'mr': 'कर्ज कलेक्शन पावती ',
    },
    'ljssg81a': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुखपृष्ठ',
    },
  },
  // CollectionList
  {
    'tq951jr3': {
      'en': 'Enter valid date',
      'hi': 'दिनांक दर्ज करें',
      'mr': 'तारीख एंटर करा',
    },
    'guzlud21': {
      'en': 'Select...',
      'hi': 'चुनना...',
      'mr': 'निवडा...',
    },
    'ii4gi3kp': {
      'en': 'Search...',
      'hi': 'खोज...',
      'mr': 'शोधा...',
    },
    'mc6amoqd': {
      'en': 'Detailed',
      'hi': 'Detailed',
      'mr': 'Detailed',
    },
    '30er99uw': {
      'en': 'Summary',
      'hi': 'Summary',
      'mr': 'Summary',
    },
    'qcp26p0e': {
      'en': 'Select...',
      'hi': 'चुनना...',
      'mr': 'निवडा...',
    },
    'ndkfkcwh': {
      'en': 'Search...',
      'hi': 'खोज...',
      'mr': 'शोधा...',
    },
    'jevbn10h': {
      'en': 'All',
      'hi': 'All',
      'mr': 'All',
    },
    'gzqgswqy': {
      'en': 'Pigmy',
      'hi': 'Pigmy',
      'mr': 'Pigmy',
    },
    'nnt9sbmc': {
      'en': 'Loan',
      'hi': 'Loan',
      'mr': 'Loan',
    },
    'qbass4x2': {
      'en': 'R.D.',
      'hi': 'R.D.',
      'mr': 'R.D.',
    },
    'yp7wy38p': {
      'en': 'Close',
      'hi': 'बंद करना',
      'mr': 'बंद करा',
    },
    'hhexg0sy': {
      'en': 'Submit',
      'hi': 'जमा करना',
      'mr': 'सबमिट करा',
    },
    'oeev2hfz': {
      'en': 'A/c No',
      'hi': 'एसी नं',
      'mr': 'एसी क्रमांक',
    },
    'j9ff79xo': {
      'en': 'Customer Name',
      'hi': 'ग्राहक का नाम',
      'mr': 'ग्राहकाचे नाव',
    },
    'y4hzeil6': {
      'en': 'Amount',
      'hi': 'रक्कम',
      'mr': 'रक्कम',
    },
    'osswy112': {
      'en': 'Total',
      'hi': 'कुल',
      'mr': 'एकूण',
    },
    'xaw4546n': {
      'en': 'Total A/c No.',
      'hi': 'कुल खाता संख्या',
      'mr': 'एकूण खाते क्रमांक.',
    },
    'tulkm0ow': {
      'en': 'Total coll. Amt',
      'hi': 'कुल संग्रह राशि',
      'mr': 'एकूण संकलन. अमृत',
    },
    'n7fo8zri': {
      'en': 'Collection List',
      'hi': 'संग्रह सूची',
      'mr': 'संग्रह यादी',
    },
    'xierg5wj': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुखपृष्ठ',
    },
  },
  // CloseCollection
  {
    'm1lqpp2y': {
      'en': 'App Date',
      'hi': '',
      'mr': '',
    },
    'uq1jxotr': {
      'en': 'TextField',
      'hi': '',
      'mr': '',
    },
    '3nq0u2jh': {
      'en': 'Total Receipt',
      'hi': 'कुल प्राप्ति',
      'mr': 'एकूण पावती',
    },
    '4qhda5z4': {
      'en': 'Coll. Amount',
      'hi': 'कुल राशि',
      'mr': 'एकूण रक्कम',
    },
    '2mcfrl30': {
      'en': 'Pigmy  Collection',
      'hi': 'पिग्मी संग्रह',
      'mr': 'पिग्मी कलेक्शन',
    },
    '77pi9pl8': {
      'en': 'Loan Collection',
      'hi': 'ऋण वसूली',
      'mr': 'कर्ज संकलन',
    },
    'pgn0g7pd': {
      'en': 'R.D. Collection',
      'hi': 'आर.डी. संग्रह',
      'mr': 'आर.डी. कलेक्शन',
    },
    'lu7q3msd': {
      'en': 'Submit',
      'hi': 'जमा करना',
      'mr': 'सबमिट करा',
    },
    '191gtx5c': {
      'en': 'Close Collection',
      'hi': 'संग्रह बंद करें',
      'mr': 'संग्रह बंद करा',
    },
    'r34lmss8': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुखपृष्ठ',
    },
  },
  // SubmitCollection
  {
    'bbrn8s4z': {
      'en': 'Batch No.',
      'hi': 'बॅच  संख्या',
      'mr': 'बॅच क्र.',
    },
    '75rk2y68': {
      'en': 'Br. Working Date',
      'hi': 'ब्र. कार्य तिथि',
      'mr': 'कामाची तारीख',
    },
    'i97ke3wb': {
      'en': 'TextField',
      'hi': 'पाठ्य से भरा',
      'mr': 'मजकूर फील्ड',
    },
    '7vllnene': {
      'en': 'App Date   ',
      'hi': 'अ‍ॅप  दिनांक',
      'mr': 'अ‍ॅप तारीख',
    },
    'gl8flvrv': {
      'en': 'TextField',
      'hi': '',
      'mr': '',
    },
    'qkfx26as': {
      'en': 'Close Date',
      'hi': 'करीबी तारीख',
      'mr': 'बंद होण्याची तारीख',
    },
    'pph4xpf0': {
      'en': 'TextField',
      'hi': '',
      'mr': '',
    },
    'gr8by0oq': {
      'en': 'Last Submit Date',
      'hi': 'अंतिम जमा तिथि',
      'mr': 'शेवटची सबमिट तारीख',
    },
    'xoglylzi': {
      'en': 'TextField',
      'hi': '',
      'mr': '',
    },
    'jkc68cm8': {
      'en': 'Total Receipt',
      'hi': 'कुल प्राप्ति',
      'mr': 'एकूण पावती',
    },
    'tbcc0i0m': {
      'en': 'Coll. Amount',
      'hi': 'कुल राशि',
      'mr': 'एकूण रक्कम',
    },
    '7d9tlsqs': {
      'en': 'Pigmy  Collection',
      'hi': 'पिग्मी संग्रह',
      'mr': 'पिग्मी कलेक्शन',
    },
    '5gqypl3j': {
      'en': 'TextField',
      'hi': '',
      'mr': '',
    },
    'xo3oq1i5': {
      'en': 'TextField',
      'hi': '',
      'mr': '',
    },
    'hnt2ma5b': {
      'en': 'Loan Collection',
      'hi': 'ऋण वसूली',
      'mr': 'कर्ज संकलन',
    },
    'i6xlxzlk': {
      'en': 'TextField',
      'hi': '',
      'mr': '',
    },
    'rwx0jv09': {
      'en': 'TextField',
      'hi': '',
      'mr': '',
    },
    'd75i1f39': {
      'en': 'R.D. Collection',
      'hi': 'आर.डी. संग्रह',
      'mr': 'आर.डी. कलेक्शन',
    },
    '6qijs6pt': {
      'en': 'TextField',
      'hi': '',
      'mr': '',
    },
    'qtm8jwia': {
      'en': 'TextField',
      'hi': '',
      'mr': '',
    },
    'hnexy2cy': {
      'en': 'Submit',
      'hi': 'जमा करना',
      'mr': 'सबमिट करा',
    },
    'y6cpxxdl': {
      'en': 'Submit Collection',
      'hi': 'संग्रह सबमिट करें',
      'mr': 'संग्रह सबमिट करा',
    },
    'ezel2dpq': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुखपृष्ठ',
    },
  },
  // CollectionReciept
  {
    'qituu8op': {
      'en': 'Receipt No',
      'hi': 'रसीद संख्या',
      'mr': 'पावती क्रमांक',
    },
    'kuzt9giw': {
      'en': 'Receipt No',
      'hi': 'रसीद संख्या',
      'mr': 'पावती नाही',
    },
    'yr16s1vh': {
      'en': 'Date',
      'hi': 'तारीख',
      'mr': 'तारीख',
    },
    'stwqh0fk': {
      'en': 'Date',
      'hi': 'तारीख',
      'mr': 'तारीख',
    },
    'w01ugd09': {
      'en': 'TextField',
      'hi': '',
      'mr': '',
    },
    '88jg3xdc': {
      'en': 'A/c No.',
      'hi': 'खाता सं.',
      'mr': 'खाते क्रमांक.',
    },
    'i69roa7q': {
      'en': 'Enter A/c No.',
      'hi': 'खाता संख्या दर्ज करें.',
      'mr': 'खाते क्रमांक प्रविष्ट करा.',
    },
    'xmkeea3i': {
      'en': 'Name',
      'hi': 'नाम',
      'mr': 'नाव',
    },
    'qwrvdwsd': {
      'en': ' Name',
      'hi': 'नाम',
      'mr': 'नाव',
    },
    'nnpxydvo': {
      'en': 'A/c Balance',
      'hi': 'खाता शेष',
      'mr': 'एसी बॅलन्स',
    },
    '27ec1rt0': {
      'en': ' A/c Balance',
      'hi': 'खाता शेष',
      'mr': 'एसी बॅलन्स',
    },
    'minlmpm7': {
      'en': 'Shadow Balance',
      'hi': 'छाया संतुलन',
      'mr': 'सावली संतुलन',
    },
    'qbzptiv1': {
      'en': 'Shadow Balance ',
      'hi': 'छाया संतुलन',
      'mr': 'सावली संतुलन',
    },
    '7f8vkdgd': {
      'en': 'Open Date',
      'hi': 'खुलने की तारीख',
      'mr': 'उघडण्याची तारीख',
    },
    '7e7brqkg': {
      'en': ' A/c Open Date ',
      'hi': 'खाता खोलने की तिथि',
      'mr': 'एसी उघडण्याची तारीख',
    },
    '7kv3283o': {
      'en': 'Last Dr. Date',
      'hi': 'अंतिम डॉ. दिनांक',
      'mr': 'शेवटची डॉ. तारीख',
    },
    'u81kvjuu': {
      'en': 'Last Dr. Date',
      'hi': 'अंतिम डॉ. दिनांक',
      'mr': 'शेवटची डॉ. तारीख',
    },
    'a50zxg2x': {
      'en': 'Account Age',
      'hi': 'खाते की आयु',
      'mr': 'खात्याचे वय',
    },
    '3u1dp05v': {
      'en': ' Account Age',
      'hi': 'खाते की आयु',
      'mr': 'खात्याचे वय',
    },
    'ezwos6mh': {
      'en': 'Remark',
      'hi': 'टिप्पणी',
      'mr': 'टिप्पणी',
    },
    'ewrvd5c7': {
      'en': 'Enter Remark',
      'hi': 'टिप्पणी दर्ज करें',
      'mr': 'टिप्पणी प्रविष्ट करा',
    },
    'mn4jqsqi': {
      'en': 'Collection Amount',
      'hi': 'संग्रह राशि',
      'mr': 'संकलन रक्कम',
    },
    'zuoxbx0p': {
      'en': 'Enter Collection Amount',
      'hi': 'संग्रह राशि दर्ज करें',
      'mr': 'संकलन रक्कम प्रविष्ट करा',
    },
    'jxguiftj': {
      'en': 'Reset',
      'hi': 'रीसेट करें',
      'mr': 'रीसेट करा',
    },
    'nn2cm5bl': {
      'en': 'Submit',
      'hi': 'जमा करना',
      'mr': 'सबमिट करा',
    },
    'x9ua006t': {
      'en': 'Reciept No is required',
      'hi': 'रसीद संख्या आवश्यक है',
      'mr': 'पावती क्रमांक आवश्यक आहे.',
    },
    'quksmc02': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'hpby9f6w': {
      'en': 'AppCurrWorkingDate is required',
      'hi': 'AppCurrWorkingDate आवश्यक है',
      'mr': 'AppCurrWorkingDate आवश्यक आहे',
    },
    '48a34owy': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'g8s5spaf': {
      'en': 'A/c No is required',
      'hi': 'A/c नंबर आवश्यक है',
      'mr': 'एसी क्रमांक आवश्यक आहे.',
    },
    'hym5wrr9': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'ianw83th': {
      'en': 'Customer Name is required',
      'hi': 'ग्राहक का नाम आवश्यक है',
      'mr': 'ग्राहकाचे नाव आवश्यक आहे.',
    },
    'bblor9uh': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    '5swkq9wa': {
      'en': 'Balance is required',
      'hi': 'संतुलन आवश्यक है',
      'mr': 'शिल्लक आवश्यक आहे',
    },
    '1ek24u0o': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'yy9n476h': {
      'en': 'ShadowBalance is required',
      'hi': 'शैडोबैलेंस आवश्यक है',
      'mr': 'शॅडोबॅलन्स आवश्यक आहे.',
    },
    'jbof3u5n': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'la5dxic6': {
      'en': 'Open Date is required',
      'hi': 'खुली तिथि आवश्यक है',
      'mr': 'उघडण्याची तारीख आवश्यक आहे',
    },
    'fqo29mvl': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'tqt5gssl': {
      'en': 'Last Dr Date is required',
      'hi': 'अंतिम डॉ. तिथि आवश्यक है',
      'mr': 'शेवटची डॉक्‍टर तारीख आवश्यक आहे',
    },
    'xlzitemm': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    '8awbo4vt': {
      'en': 'A/c Age is required',
      'hi': 'खाता आयु आवश्यक है',
      'mr': 'एसी वय आवश्यक आहे',
    },
    'fcaef9sa': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'e5qmxdin': {
      'en': ' Remark is rquired',
      'hi': 'टिप्पणी आवश्यक है',
      'mr': 'टिप्पणी आवश्यक आहे.',
    },
    'tev87x80': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    '3gscwmyf': {
      'en': ' Collection Amount is required',
      'hi': 'संग्रह राशि आवश्यक है',
      'mr': 'संकलन रक्कम आवश्यक आहे',
    },
    'n5np5q92': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'qnfvct6h': {
      'en': 'Collection Receipt',
      'hi': 'संग्रह रसीद',
      'mr': 'संकलन पावती',
    },
    'vz94gmrv': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुखपृष्ठ',
    },
  },
  // MemberListPage
  {
    '4pg7wzoc': {
      'en': 'A/c No.',
      'hi': 'खाता सं.',
      'mr': 'वातानुकूलन क्रमांक.',
    },
    'vewpsmly': {
      'en': 'Customer Name',
      'hi': 'ग्राहक का नाम',
      'mr': 'ग्राहकाचे नाव',
    },
    'rafnjztg': {
      'en': 'Member List',
      'hi': 'सदस्य सूची',
      'mr': 'सदस्य यादी',
    },
    'tehdpn43': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुखपृष्ठ',
    },
  },
  // RecurringDepositeReceipt
  {
    '5bh5k442': {
      'en': 'Receipt No',
      'hi': 'रसीद संख्या',
      'mr': 'पावती क्रमांक',
    },
    'ze9pni0m': {
      'en': 'Receipt Number',
      'hi': 'पत्र संख्या',
      'mr': 'पावती क्रमांक',
    },
    'mi23o47z': {
      'en': 'Date',
      'hi': 'तारीख',
      'mr': 'तारीख',
    },
    'fh3vumct': {
      'en': 'RD Receipt Date',
      'hi': 'आरडी रेसिपी तिथि',
      'mr': 'आरडी रेसिपी तारीख',
    },
    'z3i0hpao': {
      'en': 'Scheme Id',
      'hi': 'योजना आईडी',
      'mr': 'स्कीम आयडी',
    },
    '2nh7vqtv': {
      'en': 'Enter Scheme Id',
      'hi': 'योजना आईडी दर्ज करें',
      'mr': 'स्कीम आयडी एंटर करा',
    },
    '5st5hepq': {
      'en': 'A/c No',
      'hi': 'खाता संख्या',
      'mr': 'वातानुकूलन क्रमांक',
    },
    '6vuvxk67': {
      'en': 'Enter A/c Number',
      'hi': 'खाता संख्या दर्ज करें',
      'mr': 'एसी नंबर एंटर करा',
    },
    '5pur2lk5': {
      'en': 'Name',
      'hi': 'नाम',
      'mr': 'नाव',
    },
    'a1f57efl': {
      'en': 'RD Holder Name',
      'hi': 'आर.डी. धारक का नाम',
      'mr': 'आरडी धारकाचे नाव',
    },
    '3o0sxfto': {
      'en': 'RD Date',
      'hi': 'आरडी तिथि',
      'mr': 'आरडी तारीख',
    },
    'o3x5o617': {
      'en': 'RD Date',
      'hi': 'आरडी तिथि',
      'mr': 'आरडी तारीख',
    },
    '7zyodus4': {
      'en': 'Maturity Date',
      'hi': 'परिपक्वता तिथि',
      'mr': 'परिपक्वता तारीख',
    },
    'd4thox1u': {
      'en': ' Maturity Date',
      'hi': 'परिपक्वता तिथि',
      'mr': 'परिपक्वता तारीख',
    },
    'qbz0rq4f': {
      'en': 'Curr Bal',
      'hi': 'वर्तमान शेष',
      'mr': 'सध्याची शिल्लक',
    },
    'gnt1l9ag': {
      'en': 'Current Balance',
      'hi': 'वर्तमान शेष',
      'mr': 'सध्याची शिल्लक',
    },
    '2nrp90iv': {
      'en': 'Deposit Amt',
      'hi': 'जमा राशि',
      'mr': 'ठेव रक्कम',
    },
    'xu8v7yz5': {
      'en': ' Deposit Amount',
      'hi': 'जमा राशि',
      'mr': 'ठेव रक्कम',
    },
    '8g63gq7b': {
      'en': 'Coll Amt',
      'hi': 'कलेशन राशि',
      'mr': 'कलेशन  रक्कम',
    },
    'asxusurn': {
      'en': 'Enter Collection Amount',
      'hi': 'संग्रह राशि दर्ज करें',
      'mr': 'संकलन रक्कम प्रविष्ट करा',
    },
    '3ku8srem': {
      'en': 'RESET',
      'hi': 'रीसेट करें',
      'mr': 'रीसेट करा',
    },
    'ugupp4jc': {
      'en': 'SUBMIT',
      'hi': 'जमा करना',
      'mr': 'सबमिट करा',
    },
    'x4e0muct': {
      'en': ' Reciept Number is required',
      'hi': 'रसीद संख्या आवश्यक है',
      'mr': 'प्राप्तकर्ता क्रमांक आवश्यक आहे',
    },
    'at4ibpz6': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'tb1a5epp': {
      'en': 'RD Recipet Date is required',
      'hi': 'आरडी रेसिपी तिथि आवश्यक है',
      'mr': 'आरडी रेसिपी तारीख आवश्यक आहे',
    },
    'a4hhaxyr': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'nii8y7rf': {
      'en': 'SchemeId is required',
      'hi': 'स्कीमआईडी आवश्यक है',
      'mr': 'स्कीम आयडी आवश्यक आहे.',
    },
    'mp7q3svk': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'zsj4zwzy': {
      'en': 'AcNo is required',
      'hi': 'AcNo आवश्यक है',
      'mr': 'AcNo आवश्यक आहे',
    },
    'd2rqtybo': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'i0h8znwm': {
      'en': 'custName is required',
      'hi': 'custName आवश्यक है',
      'mr': 'custName आवश्यक आहे.',
    },
    'yhofx8ih': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    '88qr4e4x': {
      'en': 'DepositDate is required',
      'hi': 'जमा तिथि आवश्यक है',
      'mr': 'ठेवीची तारीख आवश्यक आहे',
    },
    '7te373f2': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'h6i9oxm7': {
      'en': 'MaturityDate is required',
      'hi': 'परिपक्वता तिथि आवश्यक है',
      'mr': 'मॅच्युरिटीडेट आवश्यक आहे',
    },
    '1cvq31ze': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'sixero91': {
      'en': 'balance is required',
      'hi': 'संतुलन आवश्यक है',
      'mr': 'शिल्लक आवश्यक आहे.',
    },
    'yi7pk1lz': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    's9aooceq': {
      'en': 'DepositAmount is required',
      'hi': 'जमा राशि आवश्यक है',
      'mr': 'ठेव रक्कम आवश्यक आहे',
    },
    '80306cy4': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'stbmhuw4': {
      'en': 'Enter Collection Amount is required',
      'hi': 'संग्रह राशि दर्ज करना आवश्यक है',
      'mr': 'संकलन रक्कम प्रविष्ट करणे आवश्यक आहे',
    },
    'z10wogxs': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    '5dsgv8ea': {
      'en': 'RD Receipt',
      'hi': 'आवर्ती जमा रसीद',
      'mr': 'ठेव पावती पुनर्प्राप्त करणे',
    },
    '80ifjaxe': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुखपृष्ठ',
    },
  },
  // NewAccountPage
  {
    'h7anrv6w': {
      'en': 'Enter Account Number',
      'hi': 'खाता संख्या दर्ज करें',
      'mr': 'खाते क्रमांक प्रविष्ट करा',
    },
    'a90lq4qi': {
      'en': 'Enter Date',
      'hi': 'दिनांक दर्ज करें',
      'mr': 'तारीख एंटर करा',
    },
    'y0g7amt1': {
      'en': 'Enter Customer ID',
      'hi': 'ग्राहक आईडी दर्ज करें',
      'mr': 'ग्राहक आयडी एंटर करा',
    },
    'wg1gyii3': {
      'en': ' Member Name',
      'hi': 'सदस्य का नाम',
      'mr': 'सदस्याचे नाव',
    },
    'c1arqvve': {
      'en': 'Mobile Number',
      'hi': 'मोबाइल नंबर',
      'mr': 'मोबाईल नंबर',
    },
    'kenyxzzb': {
      'en': 'Enter Collection Amount',
      'hi': 'संग्रह राशि दर्ज करें',
      'mr': 'संकलन रक्कम प्रविष्ट करा',
    },
    '2mhxn7cd': {
      'en': 'Submit',
      'hi': 'जमा करना',
      'mr': 'सबमिट करा',
    },
    'qn2p7pts': {
      'en': 'Enter Account Number is required',
      'hi': 'खाता संख्या दर्ज करना आवश्यक है',
      'mr': 'खाते क्रमांक प्रविष्ट करणे आवश्यक आहे',
    },
    '66bk1fvf': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'dmreeni2': {
      'en': 'Enter Date is required',
      'hi': 'दिनांक दर्ज करना आवश्यक है',
      'mr': 'तारीख प्रविष्ट करणे आवश्यक आहे',
    },
    'dsi3s5pv': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    '0cntyil3': {
      'en': 'Enter Customer ID is required',
      'hi': 'ग्राहक आईडी दर्ज करना आवश्यक है',
      'mr': 'ग्राहक आयडी प्रविष्ट करणे आवश्यक आहे',
    },
    's60srtnp': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'znzraoxg': {
      'en': 'Enter Member Name is required',
      'hi': 'सदस्य का नाम दर्ज करना आवश्यक है',
      'mr': 'सदस्याचे नाव प्रविष्ट करणे आवश्यक आहे.',
    },
    'vd5o7xux': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'n70tjdf6': {
      'en': 'Enter Mobile Number is required',
      'hi': 'मोबाइल नंबर दर्ज करना आवश्यक है',
      'mr': 'मोबाईल नंबर एंटर करणे आवश्यक आहे',
    },
    '3cjlusty': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'r9uso3xc': {
      'en': 'Enter Collection Amount is required',
      'hi': 'संग्रह राशि दर्ज करना आवश्यक है',
      'mr': 'संकलन रक्कम प्रविष्ट करणे आवश्यक आहे',
    },
    '9kjdnsvd': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'ilc1k47y': {
      'en': 'New Account',
      'hi': 'नया खाता',
      'mr': 'नवीन खाते',
    },
    'jujrutq6': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुखपृष्ठ',
    },
  },
  // LoanCollectionReciept
  {
    'avkpbweo': {
      'en': 'Receipt No',
      'hi': 'रसीद संख्या',
      'mr': 'पावती क्रमांक',
    },
    'fbphy5dl': {
      'en': 'Receipt  Number',
      'hi': 'पत्र संख्या',
      'mr': 'पावती क्रमांक',
    },
    'hoe4bhnj': {
      'en': 'Option 1',
      'hi': 'विकल्प 1',
      'mr': 'पर्याय १',
    },
    'krydsil7': {
      'en': 'Date',
      'hi': 'तारीख',
      'mr': 'तारीख',
    },
    'x13sfqyk': {
      'en': 'Date',
      'hi': 'तारीख',
      'mr': 'तारीख',
    },
    'lbz02or3': {
      'en': 'Scheme ID',
      'hi': 'योजना आईडी',
      'mr': 'स्कीम आयडी',
    },
    'aqj5a7ko': {
      'en': 'Enter Scheme ID',
      'hi': 'योजना आईडी दर्ज करें',
      'mr': 'स्कीम आयडी एंटर करा',
    },
    'okxh0ccn': {
      'en': 'Ac No',
      'hi': 'एसी नं',
      'mr': 'एसी क्रमांक',
    },
    'r3sndea5': {
      'en': 'Enter Account Number',
      'hi': 'खाता संख्या दर्ज करें',
      'mr': 'खाते क्रमांक प्रविष्ट करा',
    },
    '6jc8v3qi': {
      'en': 'Name',
      'hi': 'नाम',
      'mr': 'नाव',
    },
    'ruq61klf': {
      'en': 'Name',
      'hi': 'नाम',
      'mr': 'नाव',
    },
    '0axvopw6': {
      'en': 'Loan Date',
      'hi': 'ऋण तिथि',
      'mr': 'कर्जाची तारीख',
    },
    'o7zl9nx5': {
      'en': 'Loan Date',
      'hi': 'ऋण तिथि',
      'mr': 'कर्जाची तारीख',
    },
    'k67m5cbt': {
      'en': 'End Date',
      'hi': 'अंतिम तिथि',
      'mr': 'समाप्ती तारीख',
    },
    'uouzk8bx': {
      'en': ' End Date',
      'hi': 'अंतिम तिथि',
      'mr': 'समाप्ती तारीख',
    },
    'v2hckbef': {
      'en': 'Current Balance',
      'hi': 'वर्तमान शेष',
      'mr': 'सध्याची शिल्लक',
    },
    'y5bnd4v3': {
      'en': ' Current Balance',
      'hi': 'वर्तमान शेष',
      'mr': 'सध्याची शिल्लक',
    },
    'v5mssbk0': {
      'en': 'Installment Amount',
      'hi': 'किस्त की राशि',
      'mr': 'हप्त्याची रक्कम',
    },
    'fcfinwcf': {
      'en': ' Installment Amount',
      'hi': 'किस्त की राशि',
      'mr': 'हप्त्याची रक्कम',
    },
    'hveikvcf': {
      'en': 'Collection  Amount',
      'hi': 'कलेशन राशि',
      'mr': 'कलेशन  रक्कम',
    },
    'kuwm1c5p': {
      'en': 'Enter Collection  Amount',
      'hi': 'कलेशन रक्कम  दर्ज करें',
      'mr': 'कलेशन रक्कम प्रविष्ट करा',
    },
    'fxklew5f': {
      'en': 'RESET',
      'hi': 'रीसेट करें',
      'mr': 'रीसेट करा',
    },
    '6hrrtien': {
      'en': 'SUBMIT',
      'hi': 'जमा करना',
      'mr': 'सबमिट करा',
    },
    '7pimmh1f': {
      'en': 'Enter Reciept Number is required',
      'hi': 'रसीद संख्या दर्ज करना आवश्यक है',
      'mr': 'प्राप्त क्रमांक प्रविष्ट करणे आवश्यक आहे',
    },
    'uo32v6ip': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    '75ghllfs': {
      'en': 'AppCurrWorkingDate is required',
      'hi': 'AppCurrWorkingDate आवश्यक है',
      'mr': 'AppCurrWorkingDate आवश्यक आहे',
    },
    'z7wtqli8': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'bnk00yl0': {
      'en': 'SchemeId is required',
      'hi': 'स्कीमआईडी आवश्यक है',
      'mr': 'स्कीम आयडी आवश्यक आहे.',
    },
    'fxvtc3tf': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    '0oergjyo': {
      'en': 'AcNo is required',
      'hi': 'AcNo आवश्यक है',
      'mr': 'AcNo आवश्यक आहे',
    },
    '2k68r83a': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'co28dnzl': {
      'en': 'custName is required',
      'hi': 'custName आवश्यक है',
      'mr': 'custName आवश्यक आहे.',
    },
    '0jp5i32h': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'my6gk9p2': {
      'en': 'LoanDate is required',
      'hi': 'लोनडेट आवश्यक है',
      'mr': 'कर्जाची तारीख आवश्यक आहे',
    },
    'un5puagk': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'pu094skf': {
      'en': 'EndDate is required',
      'hi': 'अंतिम तिथि आवश्यक है',
      'mr': 'समाप्ती तारीख आवश्यक आहे',
    },
    'dvx3vy6l': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'cmg66hl4': {
      'en': 'balance is required',
      'hi': 'संतुलन आवश्यक है',
      'mr': 'शिल्लक आवश्यक आहे.',
    },
    'mrs7s5kw': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'tscqt6h3': {
      'en': 'InstallmentAmt is required',
      'hi': 'किस्त राशि आवश्यक है',
      'mr': 'हप्ता भरणे आवश्यक आहे.',
    },
    '49269g3g': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    'ss3a12pj': {
      'en': 'Enter Coll Amt is required',
      'hi': 'कॉल राशि दर्ज करना आवश्यक है',
      'mr': 'कॉल अमट आवश्यक आहे एंटर करा',
    },
    'x49ndn79': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'mr': 'कृपया ड्रॉपडाउनमधून एक पर्याय निवडा.',
    },
    '9w56zl13': {
      'en': 'Loan Collection Receipt',
      'hi': 'ऋण संग्रह रसीद',
      'mr': 'कर्ज वसूलीची पावती',
    },
    '3xxprpmg': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुखपृष्ठ',
    },
  },
  // GetCustomerList
  {
    '9jgx2tp6': {
      'en': 'Cust ID',
      'hi': 'ग्राहक आईडी',
      'mr': 'कस्टम आयडी',
    },
    'louwcmci': {
      'en': 'Cust Name',
      'hi': 'ग्राहक का नाम',
      'mr': 'कस्टचे नाव',
    },
    'xik1hfo9': {
      'en': 'Customer List',
      'hi': 'ग्राहकू सूची',
      'mr': 'ग्राहक यादी',
    },
    'ujc2177n': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुखपृष्ठ',
    },
  },
  // splashSchreen
  {
    'dp81gj7x': {
      'en': 'WelCome To   ',
      'hi': 'आपका स्वागत है',
      'mr': 'स्वागत आहे',
    },
    'rz2k94kj': {
      'en': 'Daily Collection Agent App',
      'hi': 'दैनिक संग्रह एजेंट ऐप',
      'mr': 'दैनिक संग्रह एजंट अ‍ॅप',
    },
    'z36kdctk': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुखपृष्ठ',
    },
  },
  // NewLoanMemberListPage
  {
    '1fjlchuq': {
      'en': 'AcNo',
      'hi': 'एसीनो',
      'mr': 'अ‍ॅक्नो',
    },
    'gv0n2t4a': {
      'en': 'Customer Name',
      'hi': 'ग्राहक का नाम',
      'mr': 'ग्राहकाचे नाव',
    },
    'yof0bij9': {
      'en': 'Loan Member List',
      'hi': 'ऋण सदस्य सूची',
      'mr': 'कर्ज सदस्य यादी',
    },
    'hln3dn6a': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुखपृष्ठ',
    },
  },
  // RDMemberList
  {
    'jp4w6nq2': {
      'en': 'A/c No.',
      'hi': 'खाता सं.',
      'mr': 'वातानुकूलन क्रमांक.',
    },
    'plc8f90r': {
      'en': 'Customer Name',
      'hi': 'ग्राहक का नाम',
      'mr': 'ग्राहकाचे नाव',
    },
    '9fextn5q': {
      'en': 'RD Member List',
      'hi': 'आरडी सदस्य सूची',
      'mr': 'आरडी सदस्य यादी',
    },
    '46akpii2': {
      'en': 'Home',
      'hi': 'घर',
      'mr': 'मुखपृष्ठ',
    },
  },
  // Miscellaneous
  {
    'wni238bv': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'ffjssf40': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'ie1z83wj': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'nf0bfzic': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'dlyoa5vb': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'djrlfenm': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    's75klsaw': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'krlpn4em': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'n8lgy6ox': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'x41z0ewc': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'gd28602c': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    '6hh4l151': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'wplkogrc': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    '6e7lusd6': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    '8zldzp3v': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'c7muyq4j': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'rrggxl16': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'ovlceoxx': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    '3jcfl7x9': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    't51qd2nh': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'q7s27x7m': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    '5yyjpuzj': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'h6ug4fwm': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'i4fwchtx': {
      'en': '',
      'hi': '',
      'mr': '',
    },
    'iux48xpo': {
      'en': '',
      'hi': '',
      'mr': '',
    },
  },
].reduce((a, b) => a..addAll(b));
