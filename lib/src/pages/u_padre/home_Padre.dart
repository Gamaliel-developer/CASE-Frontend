import 'package:flutter/material.dart';

class HomePadre extends StatefulWidget {
  const HomePadre({super.key});
  @override
  State<HomePadre> createState() => HomePadreState();
}

class HomePadreState extends State<HomePadre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Bienvenido Padre",
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
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      color: Colors.white,
                      elevation: 15.0,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://borealtech.com/wp-content/uploads/2018/10/codigo-qr-1024x1024-1.jpg')),
                        ),
                        height: 300.0,
                        width: 300.0,
                      ),
                    ),
                  ],
                )
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
                        "Hijo",
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
                        onPressed: () =>
                            Navigator.popAndPushNamed(context, 'datosalumno'),
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
