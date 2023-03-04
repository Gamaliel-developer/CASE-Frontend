import 'package:flutter/material.dart';

class HomeGuardian extends StatefulWidget {
  const HomeGuardian({super.key});
  @override
  State<HomeGuardian> createState() => HomeGuardianState();
}

class HomeGuardianState extends State<HomeGuardian> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Bienvenido Guardian",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          backgroundColor: const Color.fromRGBO(80, 197, 253, 1)),
      body: Container(
        margin: const EdgeInsets.only(top: 30.0),
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton.extended(
                        backgroundColor: Colors.red,
                        onPressed: () =>
                            Navigator.popAndPushNamed(context, 'login'),
                        label: const Text(
                          "Cerrar Sesion",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20, left: 20),
                  child: Card(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    elevation: 15.0,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Container(
                      margin: const EdgeInsets.only(
                          right: 20, left: 20, bottom: 15),
                      child: TextField(
                        obscureText: false,
                        decoration: const InputDecoration(
                            labelText: 'Buscar', fillColor: Colors.black),
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  color: const Color.fromRGBO(80, 197, 253, 1),
                  elevation: 15.0,
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: ListTile(
                    onTap: () => Navigator.popAndPushNamed(context, 'datosEstudiante'),
                    title: const Text("Estudiante",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                    trailing: const Icon(Icons.pages,
                        color: Color.fromRGBO(21, 50, 67, 1)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
