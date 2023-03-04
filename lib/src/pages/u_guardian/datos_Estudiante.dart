import 'package:flutter/material.dart';

class DatosEstudiante extends StatefulWidget {
  const DatosEstudiante({super.key});
  @override
  State<DatosEstudiante> createState() => DatosEstudianteState();
}

class DatosEstudianteState extends State<DatosEstudiante> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Datos del Alumno",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          backgroundColor: const Color.fromRGBO(80, 197, 253, 1)),
      body: Container(
        child: ListView(
          children: [
            const SizedBox(height: 30.0),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton.extended(
                        backgroundColor: const Color.fromRGBO(80, 197, 253, 1),
                        onPressed: () =>
                            Navigator.popAndPushNamed(context, 'homeguardian'),
                        label: const Text(
                          "Regresar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            Card(
              color: const Color.fromRGBO(80, 197, 253, 1),
              margin:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              elevation: 15.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text("Nombre del alumno",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0)),
                    Text("Datos del alumno",
                        style: TextStyle(color: Colors.white, fontSize: 18.0)),
                  ],
                ),
              ),
            ),
            Card(
              color: const Color.fromRGBO(80, 197, 253, 1),
              margin:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              elevation: 15.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text("Nombre del padre",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0)),
                    Text("Datos del padre",
                        style: TextStyle(color: Colors.white, fontSize: 18.0)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
