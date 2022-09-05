import 'package:qz_ui/src/helpers/string_helper.dart';
import 'package:qz_ui/src/validation/validation.dart';

class QzHelper {
  static bool isCPFvalid(String cpf) => Validation.isCPFvalid(cpf);

  static bool isCnpjValid(String cnpj) => Validation.isCNPJvalid(cnpj);

  static String onlyText(String text) => StringHelper.onlyText(text: text);

  static String onlyNumberString(String text) =>
      StringHelper.onlyNumberString(text: text);

  static double priceToDouble(String value) =>
      StringHelper.toDouble(value: value);

  static String getDate({
    bool isEnglish = true,
  }) =>
      StringHelper.dateReturn(isEnglish: isEnglish);

  static String getHour({
    bool isMillisecond = false,
    bool isEnglish = true,
  }) =>
      StringHelper.hourReturn(
        isMillisecond: isMillisecond,
        isEnglish: isEnglish,
      );

  static String viewCpfSanitized({required String document}) =>
      StringHelper.viewCpfSanitized(document: document);

  static String viewPhoneSanitized({required String phone}) =>
      StringHelper.viewPhoneSanitized(phone: phone);

  static String priceToString(double value) => StringHelper.viewPrice(value);
}
