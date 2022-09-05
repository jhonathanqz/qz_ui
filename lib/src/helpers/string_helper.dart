import 'package:intl/intl.dart';

class StringHelper {
  static String onlyText({required String text}) {
    final regexp = RegExp(r'\d');
    var onlyTextSanitized = text.replaceAll(regexp, '');
    return onlyTextSanitized;
  }

  static String onlyNumberString({required String text}) {
    final regexp = RegExp(r'\D');
    var onlySanitized = text.replaceAll(regexp, '');
    return onlySanitized
        .replaceAll('.', '')
        .replaceAll('/', '')
        .replaceAll('-', '');
  }

  static double toDouble({required String value}) {
    var valueSanitized = value
        .replaceAll('R', '')
        .replaceAll('\$', '')
        .replaceAll(' ', '')
        .replaceAll('.', '')
        .replaceAll(',', '.');

    return double.tryParse(valueSanitized)!;
  }

  static String dateReturn({
    bool isEnglish = true,
  }) {
    int year = DateTime.now().year;
    int month = DateTime.now().month;
    int day = DateTime.now().day;

    String monthSanitize = month.toString();
    String daySanitize = day.toString();

    if (monthSanitize.length == 1) {
      monthSanitize = '0$monthSanitize';
    }
    if (daySanitize.length == 1) {
      daySanitize = '0$daySanitize';
    }

    String date = '$year$monthSanitize$daySanitize';

    if (!isEnglish) {
      date = '$daySanitize/$monthSanitize/$year';
    }

    return date;
  }

  static String hourReturn({
    bool isMillisecond = false,
    bool isEnglish = true,
  }) {
    String hour = DateTime.now().hour.toString();
    String min = DateTime.now().minute.toString();
    String seconds = DateTime.now().second.toString();
    String millisecond = DateTime.now().millisecond.toString();

    if (hour.length == 1) {
      hour = '0$hour';
    }
    if (min.length == 1) {
      min = '0$min';
    }
    if (seconds.length == 1) {
      seconds = '0$seconds';
    }
    if (millisecond.length == 1) {
      millisecond = '0$millisecond';
    }

    String hourReturned = '$hour$min$seconds';

    if (isMillisecond) {
      hourReturned = '$hour$min$seconds$millisecond';
    }
    if (!isEnglish) {
      hourReturned = '$hour:$min:$seconds';
    }
    return hourReturned;
  }

  static String viewCpfSanitized({required String document}) {
    String documentSanitized = '';
    var documentInitial =
        document.replaceAll('.', '').replaceAll('-', '').replaceAll(' ', '');

    if (documentInitial.length == 11) {
      var formattedDocument =
          '${documentInitial.substring(0, 3)}.${documentInitial.substring(3, 6)}.${documentInitial.substring(6, 9)}-${documentInitial.substring(9, 11)}';
      documentSanitized = formattedDocument;
    }
    if (documentInitial.length < 11 || documentInitial.length > 11) {
      documentSanitized = documentInitial;
    }
    return documentSanitized;
  }

  static String viewPhoneSanitized({required String phone}) {
    final regexp = RegExp(r'\D');
    var phoneSanitized = '';
    var phoneInitials = phone
        .replaceAll(regexp, '')
        .replaceAll('(', '')
        .replaceAll(')', '')
        .replaceAll('-', '')
        .replaceAll(' ', '');

    if (phoneInitials.length == 10) {
      var formattedPhoneNumber =
          '(${phoneInitials.substring(0, 2)}) ${phoneInitials.substring(2, 6)}-${phoneInitials.substring(6, phoneInitials.length)}';
      phoneSanitized = formattedPhoneNumber;
    }
    if (phoneInitials.length == 11) {
      var formattedPhoneNumber2 =
          '(${phoneInitials.substring(0, 2)}) ${phoneInitials.substring(2, 7)}-${phoneInitials.substring(7, phoneInitials.length)}';
      phoneSanitized = formattedPhoneNumber2;
    }
    if (phoneInitials.length < 10 || phoneInitials.length > 11) {
      phoneSanitized = phoneInitials;
    }
    return phoneSanitized;
  }

  static String viewPrice(double value) {
    var valueSanitized = value.toStringAsFixed(2);

    if (valueSanitized != '') {
      //valueSanitized = 'R\$ ' + valueSanitized.replaceAll('.', ',');
      valueSanitized = 'R\$ ${NumberFormat("#,##0.00", "pt_BR").format(
        value,
      )}';
    } else if (valueSanitized == '') {
      valueSanitized = 'R\$ 0,00';
    } else if (valueSanitized == '0') {
      valueSanitized = 'R\$ 0,00';
    } else {
      valueSanitized = valueSanitized;
    }

    return valueSanitized;
  }
}
