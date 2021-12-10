import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'Game Hub': 'Game Hub',
          'coin toaster': 'coin toaster',
          'fingers battle': 'fingers battle',
          'tick tack toe': 'tick tack toe',
          'memory': 'memory',
          'rock paper scissors': 'rock paper scissors',
        },
        'ar': {
          'Game Hub': 'مجمع الألعاب',
          'coin toaster': 'رمي العملة',
          'fingers battle': 'معركة الاصابع',
          'tick tack toe': 'اكس اوه',
          'memory': 'الذاكرة',
          'rock paper scissors': 'حجر ورقة مقص'
        }
      };
}
