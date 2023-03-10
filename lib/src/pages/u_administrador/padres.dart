import 'package:flutter/material.dart';

class Padres extends StatefulWidget {
  const Padres({super.key});
  @override
  State<Padres> createState() => PadresState();
}

class PadresState extends State<Padres> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Padres",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
          backgroundColor: const Color.fromRGBO(80, 197, 253, 1)),
      body: Container(
        child: ListView(
          children: [
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton.extended(
                    backgroundColor: const Color.fromRGBO(80, 197, 253, 1),
                    onPressed: () =>
                        Navigator.popAndPushNamed(context, 'rpadres'),
                    label: const Text(
                      "Agregar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                const SizedBox(width: 10),
                FloatingActionButton.extended(
                    backgroundColor: const Color.fromRGBO(80, 197, 253, 1),
                    onPressed: () => Navigator.popAndPushNamed(context, '/'),
                    label: const Text(
                      "Regregar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ))
              ],
            ),
            const SizedBox(height: 30.0),
            Card(
                color: const Color.fromRGBO(80, 197, 253, 1),
                elevation: 15.0,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: Container(
                  margin:
                      const EdgeInsets.only(left: 10.0, top: 5.0, bottom: 5.0),
                  child: Row(
                    children: [
                      const Text(
                        "Padre",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 230.0,
                      ),
                      IconButton(
                        onPressed: () => {},
                        icon: const Icon(Icons.pages,
                            color: Color.fromRGBO(21, 50, 67, 1)),
                      ),
                      IconButton(
                        onPressed: () => {},
                        icon: const Icon(Icons.delete_outlined,
                            color: Color.fromRGBO(21, 50, 67, 1)),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
