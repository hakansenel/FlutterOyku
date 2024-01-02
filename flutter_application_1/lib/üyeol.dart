import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200.0,
                  color: Colors.purple,
                  child: Center(
                    child: N11Logo(),
                  ),
                ),
                SizedBox(height: 16.0),
                AuthButtons(),
                SizedBox(height: 16.0),
                DiscountText(),
                SizedBox(height: 16.0),
                CouponText(),
                SizedBox(height: 16.0),
                NameSurnameFields(),
                SizedBox(height: 16.0),
                EmailField(),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CountryCodeField(),
                    SizedBox(width: 8.0),
                    PhoneNumberField(),
                  ],
                ),
                SizedBox(height: 16.0),
                VerificationText(),
                SizedBox(height: 16.0),
                PasswordField(),
                SizedBox(height: 16.0),
                GenderField(),
                SizedBox(height: 16.0),
                TermsAndConditions(),
                SizedBox(height: 16.0),
                MarketingConsent(),
                SizedBox(height: 40.0),
                MarketingConsentDetails(),
                SizedBox(height: 16.0),
                VerifyPhoneNumberButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class N11Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50.0),
        Container(
          height: 125.0,
          width: 500.0,
          color: Colors.white,
          child: Center(
            child: Image.asset(
              'assets/images/n112.png',
              width: 75.0,
            ),
          ),
        ),
        Container(
          width: 500.0,
          height: 20.0,
          color: Colors.white,
          child: Center(
            child: Text(
              'Üyelere özel kupon ve fırsatlar seni bekliyor!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class AuthButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 202, 200, 200),
          ),
          child: Text(
            'Giriş Yap',
            style: TextStyle(color: Colors.black),
          ),
        ),
        SizedBox(width: 20.0),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
          ),
          child: Text(
            'Üye Ol',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}

class DiscountText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.only(left: 100.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 196, 156, 203),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: Text(
        '75 TL İndirim Kazan',
        style: TextStyle(
          color: Colors.black,
          fontSize: 10.0,
        ),
      ),
    );
  }
}

class CouponText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0, // Genişlik ayarı
      margin: EdgeInsets.symmetric(vertical: 16.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 213, 180, 219),
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '\$',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
            ),
          ),
          SizedBox(width: 4.0),
          Text(
            'Yeni üyelere özel 75 TL indirim kuponu!',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}

class NameSurnameFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150.0,
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Ad',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(width: 5.0),
        Container(
          width: 150.0,
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Soyad',
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}

class EmailField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      child: TextField(
        decoration: InputDecoration(
          labelText: 'E-posta',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class CountryCodeField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Ülke Kodu',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class PhoneNumberField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175.0,
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Telefon Numarası',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class VerificationText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.0),
      padding: EdgeInsets.all(5.0),
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 187, 156, 192),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error,
              color: Color.fromARGB(255, 81, 78, 81),
              size: 15.0,
            ),
            SizedBox(width: 6.0),
            Container(
              child: Text(
                'Numaranı doğrulaman için SMS ile kod göndereceğiz.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 300.0,
          child: TextField(
            obscureText: _obscureText,
            decoration: InputDecoration(
              labelText: 'Şifre',
              border: OutlineInputBorder(),
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
            ),
          ),
        ),
        SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildDot(),
            SizedBox(width: 4.0),
            _buildText('6-15 karakter'),
            SizedBox(width: 8.0),
            _buildDot(),
            SizedBox(width: 4.0),
            _buildText('En az 1 rakam'),
            SizedBox(width: 8.0),
            _buildDot(),
            SizedBox(width: 4.0),
            _buildText('En az 1 harf'),
          ],
        ),
      ],
    );
  }

  Widget _buildDot() {
    return Container(
      width: 6.0,
      height: 6.0,
      decoration: BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _buildText(String text) {
    return Text(
      text,
      style: TextStyle(color: Colors.grey, fontSize: 12.0),
    );
  }
}

class GenderSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GenderOption("Kadın"),
          SizedBox(width: 25.0),
          GenderOption("Erkek"),
        ],
      ),
    );
  }
}

class GenderOption extends StatelessWidget {
  final String gender;

  GenderOption(this.gender);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 8.0),
        child: Text(
          gender,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class GenderField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 3.0, right: 150.0),
          child: Text(
            'Cinsiyet (İsteğe Bağlı)',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        GenderSelection(),
      ],
    );
  }
}

class TermsAndConditions extends StatefulWidget {
  @override
  _TermsAndConditionsState createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool _accepted = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
            value: _accepted,
            onChanged: (value) {
              setState(() {
                _accepted = value!;
              });
            },
          ),
          Text(
            'Üyelik sözleşmesi şartlarını okudum ve kabul ediyorum.',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}

class MarketingConsent extends StatefulWidget {
  @override
  _MarketingConsentState createState() => _MarketingConsentState();
}

class _MarketingConsentState extends State<MarketingConsent> {
  bool _subscribeToPromotions = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.0, right: 40.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: _subscribeToPromotions,
                onChanged: (value) {
                  setState(() {
                    _subscribeToPromotions = value!;
                  });
                },
              ),
              Text(
                'n11\'in bana özel sunduğu kampanya ve fırsatlardan haberdar olmak istiyorum.',
                style: TextStyle(
                    color: Colors.black, decoration: TextDecoration.underline),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MarketingConsentDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3.0, right: 40.0),
      child: Text(
        'KVKK kapsamı detaylarına, n11 Müşteri Kişisel Verilerinin İşlenmesine İlişkin Aydınlatma Metninin yer aldığı sayfamızdan ulaşabilirsiniz.',
        style: TextStyle(
          color: Colors.black,
          decoration: TextDecoration.underline,
          fontSize: 12.0,
        ),
      ),
    );
  }
}

class VerifyPhoneNumberButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.purple,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
            child: Text(
              'Numaranı Doğrula',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(height: 16.0),
        Text(
          'Diğer Giriş Seçenekleri',
          style: TextStyle(color: Colors.grey, fontSize: 12.0),
        ),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialLoginButton(
              onPressed: () {},
              iconPath: 'assets/images/google_icon.png',
            ),
            SizedBox(width: 8.0),
            SocialLoginButton(
              onPressed: () {},
              iconPath: 'assets/images/image.png',
            ),
          ],
        ),
      ],
    );
  }
}

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String iconPath;

  SocialLoginButton({required this.onPressed, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 120.0,
          height: 50.0,
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
              padding: EdgeInsets.all(16.0),
            ),
            child: Image.asset(
              iconPath,
              width: 50.0,
              height: 50.0,
            ),
          ),
        ),
      ],
    );
  }
}
