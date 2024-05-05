import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

class Lostpassword extends StatefulWidget {
  const Lostpassword({super.key});

  @override
  State<Lostpassword> createState() => _LoginState();
}

class _LoginState extends State<Lostpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: GestureDetector(
                    onTap: () {
                      context.go('/login');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.shade800, width: 2),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 1),
                              blurRadius: 10,
                              color: Colors.grey.shade800,
                            )
                          ]),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [],
              ),
            ),
            SizedBox(
              height: 26,
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Email',
                style: TextStyle(
                  color: Colors.grey.shade200,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.5),
              child: Container(
                color: Color.fromARGB(157, 53, 53, 53),
                child: TextField(
                  style: TextStyle(
                      color: Colors.grey.shade200,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                    hintText: 'Digite seu e-mail',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey.shade800,
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        width: 2,
                        color: Color(0xffe09b01),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(height: 45),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 65),
              child: GestureDetector(
                onTap: () {
                  context.go('/inicio');
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xffe09b01),
                        Color(0xffe09b01),
                      ],
                    ),
                  ),
                  child: Text(
                    'Recuperar Senha',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
