import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _retypePasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: Image.asset("assets/diamond.png"),
        title: const Text('Shrine'),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                const SizedBox(height: 16.0),
                const Text(
                  'Registrasi',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text("Masukkan data diri Anda dengan benar!")
              ],
            ),
            const SizedBox(height: 80.0),
            const Text("Masukkan Username:", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 12),
            TextField(
              controller: _usernameController,
              decoration:
                  _textFieldDecoration('Username', prefixIcon: Icons.person),
            ),
            const SizedBox(height: 12.0),
            const Text("Masukkan Password:", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 12),
            TextField(
              controller: _passwordController,
              decoration:
                  _textFieldDecoration('Password', prefixIcon: Icons.key),
              obscureText: true,
            ),
            const SizedBox(height: 12.0),
            const Text("Ulangi Password:", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 12),
            TextField(
              controller: _retypePasswordController,
              decoration: _textFieldDecoration('Retype Password',
                  prefixIcon: Icons.key),
              obscureText: true,
            ),
            const SizedBox(height: 12.0),
            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 18.0),
                    ),
                  ),
                  child: const Text('CANCEL'),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                    _retypePasswordController.clear();
                  },
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 18.0),
                    ),
                  ),
                  child: const Text('REGISTER'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                ),
              ],
            ),
            const SizedBox(height: 42.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Anda sudah memiliki akun? '),
                TextButton(
                  onPressed: () {
                    // Navigate to your login page here
                    Navigator.pushNamed(context,
                        '/login'); // Assuming your login page is named '/login'
                  },
                  child: const Text('Sign In'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration _textFieldDecoration(String labelText,
      {IconData? prefixIcon}) {
    return InputDecoration(
      labelText: labelText,
      prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(color: Colors.blue, width: 1.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(color: Colors.blue, width: 1.0),
      ),
      contentPadding:
          const EdgeInsets.symmetric(vertical: 18.0, horizontal: 24.0),
    );
  }
}
