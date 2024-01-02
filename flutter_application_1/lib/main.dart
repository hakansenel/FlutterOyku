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
        body: Stack(
          children: [
            Container(
              height: 200.0,
              width: double.infinity,
              color: Colors.purple,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30.0),
                  Text(
                    'Üyelere özel kupon ve fırsatlar seni bekliyor',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          print('Giriş Yap');
                        },
                        child: Container(
                          width: 120.0,
                          child: Center(child: Text('Giriş Yap')),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                      ),
                      SizedBox(width: 16.0),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterPage(),
                            ),
                          );
                        },
                        child: Container(
                          width: 120.0,
                          child: Center(child: Text('Üye Ol')),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      '75 TL indirim kazan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'E-posta Adresi',
                      fillColor: Color.fromARGB(255, 237, 236, 236),
                      filled: true,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: [
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Şifre',
                          fillColor: Color.fromARGB(255, 233, 233, 233),
                          filled: true,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          print('Şifre görünürlüğünü değiştir');
                        },
                        icon: Icon(Icons.visibility),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        print('Şifremi Unuttum');
                      },
                      child: Text('Şifremi unuttum'),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    width: 600.0,
                    height: 80.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AnotherPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Giriş Yap',
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Diğer Giriş Seçenekleri',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          print('Google ile Giriş');
                        },
                        icon: Image.asset(
                          'assets/images/google_icon.png',
                          width: 75.0,
                          height: 75.0,
                        ),
                      ),
                      SizedBox(width: 10.0),
                      IconButton(
                        onPressed: () {
                          print('Facebook ile Giriş');
                        },
                        icon: Image.asset(
                          'assets/images/image.png',
                          width: 65.0,
                          height: 65.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Üye Ol'),
      ),
      body: Center(
        child: Text('Bu sayfa üye olmak için kullanılır.'),
      ),
    );
  }
}

class AnotherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Another Page'),
      ),
      body: Center(
        child: Text('Bu sayfa başka bir sayfaya geçiş için kullanılır.'),
      ),
    );
  }
}
