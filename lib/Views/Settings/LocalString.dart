import 'package:get/get.dart';
class LocalString extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String >> get keys => {
    'en_US':{
      'Hello':'HELLO WORLD',
      'message':'WELCOME',
      'Settings':'Settings',
      'App language':'App language',
      'Offline maps settings':'Offline maps settings',
      'Distance units':'Distance units',
      'Location':'Location',
      'French': 'French',
      'English': 'English',
      'Arabic':'Arabic',
      'Korean':'Korean',
      'Log out':'Log out',
    },
    'ar_ARB':{
      'Hello':'مرحبا',
      'message':'على الرحب',
      'Settings':'إعدادات',
      'App language':'لغة التطبيق',
      'Offline maps settings':'إعدادات الخرائط بلا اتصال بالإنترنت',
      'Distance units':'وحدات المسافة',
      'Location':'الموقع',
      'French': 'الفرنسية',
      'English': 'الانجليزية',
      'Arabic':'العربية',
      'Korean':'الكورية',
      'Log out' :'تسجيل خروج',
    },
    'fr_FR':{
      'Hello':'Bonjour',
      'message':'de rien',
      'Settings':'Parametres',
      'App language':'Language',
      'Offline maps settings':'Paramètres de cartes hors ligne  ',
      'Distance units':'Unités de distance',
      'Location':'Localisation',
      'French': 'Francais',
      'English': 'Anglais',
      'Arabic':'Arabe',
      'Korean':'Corean',
      'Log out':'Se déconnecter',
    },
};
}