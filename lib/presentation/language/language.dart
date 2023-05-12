Map<String, String> ru = {
  "autoPrice": "Auto Price",
};

Map<String, String> en = {
  // Sign In Page
  "back": "Back",
  "createyourAccount": "Create Your \naccount",
  "email": "EMAIL ADDRESS",
  "password": "PASSWORD",
  "signin": "Sign In",
  "haveAccount": "Don’t have an account?",
  "createAccount": " Create account",

  // All Product Page

  "autoPrice": "Auto Price",
};

enum Lang {
  // Sign In Page

  createyourAccount,
  back,
  email,
  password,
  signin,
  haveAccount,
  createAccount,
  autoPrice,

  // All Product Page
  title;

 
}

enum LangCode {
  en,
  ru,
}

bool _lang = true;

 void $changeLang(LangCode code) {
    if (code == LangCode.en) {
      _lang = true;
    } else {
      _lang = false;
    }
  }

extension LanguageEnum on Lang {
  String tr() {
    return _lang ? en[name]! : ru[name]!;
  }
}
