class Validator {
 static String validatePassword(String value) {
  RegExp cyrillicLowerRegex = RegExp(r'[а-я]');
  RegExp cyrillicUpperRegex = RegExp(r'[А-Я]');
  RegExp latinUpperRegex = RegExp(r'[A-Z]');
  RegExp specialCharRegex = RegExp(r'[\[\];’\\\/]');
  
  int cyrillicLowerCount = cyrillicLowerRegex.allMatches(value).length;
  int cyrillicUpperCount = cyrillicUpperRegex.allMatches(value).length;
  int latinUpperCount = latinUpperRegex.allMatches(value).length;
  int specialCharCount = specialCharRegex.allMatches(value).length;

  if (value.length < 10) {
    return 'Password must be at least 10 characters long';
  }

  int criteriaMetCount = 0;
  if (cyrillicLowerCount > 0) criteriaMetCount++;
  if (cyrillicUpperCount > 0) criteriaMetCount++;
  if (latinUpperCount > 0) criteriaMetCount++;
  if (specialCharCount > 0) criteriaMetCount++;

  if (criteriaMetCount < 3) {
    return 'Password must meet at least 3 out of 4 criteria';
  }

  return '';
}
}