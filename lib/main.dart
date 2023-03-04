import 'package:c_a_s_e/src/pages/login.dart';
import 'package:c_a_s_e/src/pages/u_administrador/guardianes.dart';
import 'package:c_a_s_e/src/pages/u_administrador/hijos.dart';
import 'package:c_a_s_e/src/pages/u_administrador/home_Admin.dart';
import 'package:c_a_s_e/src/pages/u_administrador/padres.dart';
import 'package:c_a_s_e/src/pages/u_administrador/r_guardianes.dart';
import 'package:c_a_s_e/src/pages/u_administrador/r_hijos.dart';
import 'package:c_a_s_e/src/pages/u_administrador/r_padres.dart';
import 'package:c_a_s_e/src/pages/u_guardian/datos_Estudiante.dart';
import 'package:c_a_s_e/src/pages/u_guardian/home_Guardian.dart';
import 'package:c_a_s_e/src/pages/u_padre/datos_Alumno.dart';
import 'package:c_a_s_e/src/pages/u_padre/home_padre.dart';
import 'package:c_a_s_e/src/pages/u_padre/restablecer_Pass.dart';
import 'package:c_a_s_e/src/pages/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Case',
      debugShowCheckedModeBanner: false,
      initialRoute: 'homeguardian',
      routes: {
        '/': (_) => const Welcome(),
        'login': (_) => const Login(),
        'admin': (_) => const HomeAdmin(),
        'guardianes': (_) => const Guardianes(),
        'rguardianes': (_) => const RGuardianes(),
        'padres': (_) => const Padres(),
        'rpadres': (_) => const RPadres(),
        'hijos': (_) => const Hijos(),
        'rhijos': (_) => const RHijos(),
        'homepadre': (_) => const HomePadre(),
        'datosalumno': (_) => const DatosAlumno(),
        'restablecerpass': (_) => const RestablecerPass(),
        'homeguardian': (_) => const HomeGuardian(),
        'datosEstudiante': (_) => const DatosEstudiante()
      },
    );
  }
}
