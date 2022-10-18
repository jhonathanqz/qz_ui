class Validation {
  static const _STRIP_REGEX = r'[^\d]';
  static bool isCPFvalid(String cpf) {
    var onlyNumbers = cpf.replaceAll(RegExp(r'[^0-9]'), '');

    if (onlyNumbers.length != 11) return false;

    if (RegExp(r'^(\d)\1*$').hasMatch(onlyNumbers)) return false;

    List<int> digits =
        onlyNumbers.split('').map((String d) => int.parse(d)).toList();

    var firstVerifier = 0;
    for (var i in Iterable<int>.generate(9, (i) => 10 - i)) {
      firstVerifier += digits[10 - i] * i;
    }
    firstVerifier %= 11;
    var dv1 = firstVerifier < 2 ? 0 : 11 - firstVerifier;

    if (digits[9] != dv1) return false;

    var secondVerifier = 0;
    for (var i in Iterable<int>.generate(10, (i) => 11 - i)) {
      secondVerifier += digits[11 - i] * i;
    }
    secondVerifier %= 11;
    var dv2 = secondVerifier < 2 ? 0 : 11 - secondVerifier;

    if (digits[10] != dv2) return false;

    return true;
  }

  static bool isCNPJvalid(String? cnpj, [stripBeforeValidation = true]) {
    // ignore: constant_identifier_names
    const List<String> BLACKLIST = [
      "00000000000000",
      "11111111111111",
      "22222222222222",
      "33333333333333",
      "44444444444444",
      "55555555555555",
      "66666666666666",
      "77777777777777",
      "88888888888888",
      "99999999999999"
    ];
    if (stripBeforeValidation) {
      cnpj = _strip(cnpj);
    }

    // cnpj must be defined
    if (cnpj == null || cnpj.isEmpty) {
      return false;
    }

    // cnpj must have 14 chars
    if (cnpj.length != 14) {
      return false;
    }

    // cnpj can't be blacklisted
    // ignore: prefer_contains
    if (BLACKLIST.indexOf(cnpj) != -1) {
      return false;
    }

    String numbers = cnpj.substring(0, 12);
    numbers += _verifierDigit(numbers).toString();
    numbers += _verifierDigit(numbers).toString();

    return numbers.substring(numbers.length - 2) ==
        cnpj.substring(cnpj.length - 2);
  }

  static int _verifierDigit(String cnpj) {
    int index = 2;

    List<int> reverse =
        cnpj.split("").map((s) => int.parse(s)).toList().reversed.toList();

    int sum = 0;

    // ignore: avoid_function_literals_in_foreach_calls
    reverse.forEach((number) {
      sum += number * index;
      index = (index == 9 ? 2 : index + 1);
    });

    int mod = sum % 11;

    return (mod < 2 ? 0 : 11 - mod);
  }

  static String _strip(String? cnpj) {
    RegExp regex = RegExp(_STRIP_REGEX);
    cnpj = cnpj ?? "";

    return cnpj.replaceAll(regex, "");
  }
}
