
class TValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Adresse mail ne peut être vide.';
    }

    // Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Adresse mail invalide.';
    }

    return null;
  }

  static String? validateInput(String? value, String? fielName) {
    if (value == null || value.isEmpty) {
      return '$fielName ne peut être vide';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Le mot de passe ne peut être vide.';
    }

    // Check for minimum password length
    if (value.length < 8) {
      return 'Le mot de passe très court (minimum 08 caratères).';
    }

    // Check for uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Le mot doit contenir au moins une majuscule.';
    }

    // Check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Le mot doit contenir au moins un chiffre.';
    }

    // Check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Le mot doit contenir au moins un caractère spécial.';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Le téléphone ne peut être vide.';
    }

    // Regular expression for phone number validation (assuming a 10-digit US phone number format)
    final phoneRegExp = RegExp(r'^\d{9}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Format du numéro de téléphone invalide (09 chiffres requis).';
    }

    return null;
  }

// Add more custom validators as needed for your specific requirements.
}
