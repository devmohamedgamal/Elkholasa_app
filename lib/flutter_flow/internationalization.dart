import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

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
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

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

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

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

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // onBoardingView
  {
    'wf2fskfa': {
      'en': 'Let\'s start ',
      'ar': '',
    },
    'bqr9s7kr': {
      'en': 'Growing\n',
      'ar': '',
    },
    'zb403vsi': {
      'en': 'your ',
      'ar': '',
    },
    '85ts99n1': {
      'en': 'Study',
      'ar': '',
    },
    'utl6z8vo': {
      'en': 'Let\'s start ',
      'ar': '',
    },
    'uj8jv38l': {
      'en': 'The complete app to start learning study\nand growing your skills',
      'ar': '',
    },
    '0pvmqn7y': {
      'en': 'Get started',
      'ar': '',
    },
    '2zp7ces5': {
      'en': 'Home',
      'ar': '',
    },
  },
  // homeView
  {
    'a35m3tvm': {
      'en': 'Ready to study',
      'ar': '',
    },
    'nwhqw7tn': {
      'en': 'Choose Your subject',
      'ar': '',
    },
    'ahmdhse1': {
      'en': 'عن الجامعة',
      'ar': '',
    },
    'b7v2rttt': {
      'en': 'الاخبار',
      'ar': '',
    },
    'u0g0zbuq': {
      'en': 'Subjects',
      'ar': '',
    },
    '7r7ig65t': {
      'en': 'Home',
      'ar': '',
    },
  },
  // categoryView
  {
    'rrp9ir3s': {
      'en': 'Home',
      'ar': '',
    },
  },
  // chooseYourRoles
  {
    'yf3dduhr': {
      'en': 'Choose your Rols',
      'ar': '',
    },
    'wmhixzkw': {
      'en': 'Choose your University',
      'ar': '',
    },
    '4b68et70': {
      'en': 'Please select...',
      'ar': '',
    },
    '6qfyvvbb': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'y7wgrsro': {
      'en': 'Choose your Debartment',
      'ar': '',
    },
    'kmlpv1xk': {
      'en': 'Please select...',
      'ar': '',
    },
    '9f8ztlsv': {
      'en': 'Search for an item...',
      'ar': '',
    },
    '499z1xk9': {
      'en': 'Choose your Level',
      'ar': '',
    },
    'h0a4ynd4': {
      'en': 'الصف الاول',
      'ar': '',
    },
    'lm2ie3zk': {
      'en': 'الصف الثاني',
      'ar': '',
    },
    'sv248w6z': {
      'en': 'الصف الثالث',
      'ar': '',
    },
    '57n0qoc9': {
      'en': 'الصف الرابع',
      'ar': '',
    },
    'hvvfgxdp': {
      'en': 'Please select...',
      'ar': '',
    },
    'n6ca8og3': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'tnvkg9eq': {
      'en': 'Choose your Semester',
      'ar': '',
    },
    'xlmasaun': {
      'en': 'الترم الاول',
      'ar': '',
    },
    'elx7bo3e': {
      'en': 'الترم الثاني',
      'ar': '',
    },
    '1bxjjcpn': {
      'en': 'Please select...',
      'ar': '',
    },
    '9znksg1s': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'yxqs3822': {
      'en': 'Save',
      'ar': '',
    },
    'uqdvwu2t': {
      'en': 'أهلا بيك',
      'ar': '',
    },
    '2dlhvyxd': {
      'en': 'Home',
      'ar': '',
    },
  },
  // lecturesView
  {
    'uh8r0fhf': {
      'en': 'Lectures',
      'ar': '',
    },
    'mmolqrhz': {
      'en': 'Home',
      'ar': '',
    },
  },
  // aboutUniversity
  {
    '7kzhn2lv': {
      'en': 'معلومات',
      'ar': '',
    },
    'xqkfrodn': {
      'en': 'Name',
      'ar': '',
    },
    'u0vgnius': {
      'en': 'phone',
      'ar': '',
    },
    'w25bi0cv': {
      'en': 'Address',
      'ar': '',
    },
    'fhqm4oiz': {
      'en': 'facebook',
      'ar': '',
    },
    'hwzwjnp5': {
      'en': 'Website',
      'ar': '',
    },
    '4eeqt1iy': {
      'en': 'الدكاترة',
      'ar': '',
    },
    'ti2t4xln': {
      'en': 'خريطة الجامعة',
      'ar': '',
    },
    'ukfc7gkc': {
      'en': 'متطلبات',
      'ar': '',
    },
    's7qcfx1k': {
      'en': 'تقديم جديد',
      'ar': '',
    },
    'xj0nh3b1': {
      'en': 'الاقسام',
      'ar': '',
    },
    '1x76cpgx': {
      'en': 'عن الجامعة',
      'ar': '',
    },
    'efb8004c': {
      'en': 'Home',
      'ar': '',
    },
  },
  // docsDetailsView
  {
    'olpnpaub': {
      'en': 'Doctors',
      'ar': '',
    },
    'nkksvxxa': {
      'en': 'Home',
      'ar': '',
    },
  },
  // categorys
  {
    '1ypbm1mu': {
      'en': 'Choose your category',
      'ar': '',
    },
    '15bd2kbr': {
      'en': 'Home',
      'ar': '',
    },
  },
  // newsView
  {
    'ykq2tka1': {
      'en': 'University News',
      'ar': '',
    },
    's42058m5': {
      'en': 'News Feed',
      'ar': '',
    },
  },
  // webView
  {
    '7v45hlce': {
      'en': 'Home',
      'ar': '',
    },
  },
  // EmptyComponent
  {
    'e3taf253': {
      'en': 'This Section is Empty for now',
      'ar': '',
    },
  },
  // infoComponent
  {
    'gn89bng1': {
      'en': 'Version',
      'ar': '',
    },
    'ztdlac6h': {
      'en': '1.0.0',
      'ar': '',
    },
    '69ybk37s': {
      'en': 'developer',
      'ar': '',
    },
    'fc6vyok2': {
      'en': 'Mohamed Gamal',
      'ar': '',
    },
    'wtwi6d00': {
      'en': ' facebook',
      'ar': '',
    },
    'ga6qy4xg': {
      'en': 'Maynos2',
      'ar': '',
    },
    'p93neda7': {
      'en': 'whatsApp',
      'ar': '',
    },
    'paf2ytlm': {
      'en': '+201019876085',
      'ar': '',
    },
    'z16dyftw': {
      'en': 'Linkedin',
      'ar': '',
    },
    'pe83f2la': {
      'en': 'Mohamed Gamal Sabri',
      'ar': '',
    },
    'ygyyfk8f': {
      'en': 'Github',
      'ar': '',
    },
    'nu0eqgcb': {
      'en': 'devmogamal',
      'ar': '',
    },
  },
  // debartmentInfo
  {
    '0cmfdx8m': {
      'en': 'نبذه عن القسم',
      'ar': '',
    },
    'p9cnjtf5': {
      'en': 'المسمايات الوظيفية',
      'ar': '',
    },
  },
  // Miscellaneous
  {
    'tjr5qmgn': {
      'en': '',
      'ar': '',
    },
    '4uu2xi16': {
      'en': '',
      'ar': '',
    },
    'qqectm0g': {
      'en': '',
      'ar': '',
    },
    'u87e57mt': {
      'en': '',
      'ar': '',
    },
    'ozktacbq': {
      'en': '',
      'ar': '',
    },
    'x9afsfr9': {
      'en': '',
      'ar': '',
    },
    'y6aksdte': {
      'en': '',
      'ar': '',
    },
    'xq2eqnk1': {
      'en': '',
      'ar': '',
    },
    '3p0yfoe7': {
      'en': '',
      'ar': '',
    },
    'j7kpwez9': {
      'en': '',
      'ar': '',
    },
    'c6cjzyp0': {
      'en': '',
      'ar': '',
    },
    '9xdwhlsq': {
      'en': '',
      'ar': '',
    },
    'k4jrqlwy': {
      'en': '',
      'ar': '',
    },
    'usxw4nf9': {
      'en': '',
      'ar': '',
    },
    '8lycv6zb': {
      'en': '',
      'ar': '',
    },
    'jsoqwfty': {
      'en': '',
      'ar': '',
    },
    'iquvy8ih': {
      'en': '',
      'ar': '',
    },
    'aop7ri5l': {
      'en': '',
      'ar': '',
    },
    'iooj60nc': {
      'en': '',
      'ar': '',
    },
    'rt1tbpbh': {
      'en': '',
      'ar': '',
    },
    '7pgvhak4': {
      'en': '',
      'ar': '',
    },
    'elufry76': {
      'en': '',
      'ar': '',
    },
    'o8890ve3': {
      'en': '',
      'ar': '',
    },
    'sv13qine': {
      'en': '',
      'ar': '',
    },
    'k5e2zhtx': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
