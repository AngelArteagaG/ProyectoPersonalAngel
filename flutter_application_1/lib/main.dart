import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/cambio_tema_prv.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/navbar.dart';
void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
const MiApp({key}) : super(key: key);

@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
title: 'Mi App',
  theme: ThemeData(
   brightness: Brightness.dark,
   
   ),
initialRoute: '/',
routes: {
'/': (context) => Inicio(),
'/detalle': (context) => Detalle(),
'/configuracion': (context) => Configuracion(),
'/Galeria':(context) => Galeria(),
},
);
}
}

class Inicio extends StatelessWidget {
Inicio({key}) : super(key: key);
@override
Widget build(BuildContext context) {
return Scaffold(
drawer: navbar(),
appBar: AppBar(
centerTitle: true,
title: Text("Biblioteca",
style: TextStyle(fontSize: 30,fontFamily: "BrunoAceSC"),) ,
),
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text(
"El Ateneo Grand Splendid",
style: TextStyle(fontSize: 38,fontFamily:"VinaSans"),
),
Image.asset('assets/Galio_PORTADA.jpg', width: 350, height: 400,),
SizedBox(height: 20),
OutlinedButton.icon(
  icon: Icon(Icons.info_outline),
  label:Text('Ver Detalles', style: TextStyle(fontFamily: "BrunoAceSC"),),
onPressed: () => Navigator.pushNamed(context, '/detalle'),
style: TextButton.styleFrom(
    primary: Color.fromARGB(255, 253, 255, 255),
    backgroundColor: Color.fromARGB(255, 2, 92, 72)),
    
),
SizedBox(height: 20),
OutlinedButton.icon(
  icon: Icon(Icons.settings),
  label: Text('Configuración', style: TextStyle(fontFamily: "BrunoAceSC"),),
onPressed: () => Navigator.pushNamed(context, '/configuracion'),
style: TextButton.styleFrom(
    primary: Color.fromARGB(255, 253, 255, 255),
    backgroundColor: Color.fromARGB(255, 2, 92, 72)),


),
SizedBox(height: 20),
OutlinedButton.icon(
  icon: Icon(Icons.photo_camera_back_outlined),
  label: Text("Galería", style: TextStyle(fontFamily: "BrunoAceSC"),),
onPressed: () => Navigator.pushNamed(context, '/Galeria'),
style: TextButton.styleFrom(
    primary: Color.fromARGB(255, 253, 255, 255),
    backgroundColor: Color.fromARGB(255, 2, 92, 72)),


),
],
),
),
);
}
}

class Detalle extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text("Detalle", style: TextStyle(fontFamily: "BrunoAceSC"),),
),
body: Center(
child: Text(
"Pantalla Detalle",
style: TextStyle(fontSize: 28, fontFamily: "VinaSans"),
),
),
);
}
}

class Configuracion extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MultiProvider(
providers: [
  ChangeNotifierProvider(create: (_) => Changetheme()),
  ],
child: Builder(
  builder: (context) {
   final Changethemes = Provider.of<Changetheme>(context);
    return     MaterialApp(
    
    debugShowCheckedModeBanner: false,
    
    title: "Configuracion", 
    
    theme: Changethemes.isdarktheme ? ThemeData.light() : ThemeData.dark(),
    
    home: Scaffold(
    
      appBar: AppBar(
    
        title:Text("Configuracion", style: TextStyle(fontSize:20 ,fontFamily: "BrunoAceSC"),),
    
        actions: [Switch(value: Changethemes.isdarktheme, onChanged: (_){
          Changethemes.isdarktheme= _;
        })],
    
      ) ,
    
      body: Center(
    
    child: Text("CAMBIE EL TEMA DE LA APLICACION",style: TextStyle(fontSize: 28, fontFamily: "VinaSans"),)
    
    ),
    
    ),
    
    );
  }
),
);
}
}
class Galeria extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text("Galeria" , style: TextStyle(fontSize:20, fontFamily:"BrunoAceSC"),),
),
body: Center(
child: Column(
  children: [
    Image.asset('assets/1galeria.jpg', width: 400,),
    Image.asset('assets/2galeria.jpg', width: 300,),
    Image.asset('assets/3galeria.jpg', width: 400,),
  ],
)

),
);
}
}

 

