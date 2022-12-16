import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home:Scaffold(
      appBar:AppBar(
        title:Text("Meu primeiro App")
      )
     ,
     body:Column(
        children:[
          Image(
            image:AssetImage('/muro.jpg')
          ),
        Container(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                child: Column(
                   crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Text('Kotel',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                   Text('Jerusalém, Israel',
                   style: TextStyle(fontSize: 16,color:Colors.grey))
                ],
                ),
              ),
               Row(
                  children: [
                    Icon(Icons.star,color:Colors.blue),
                    Text('9.876')
                  ],
                ),      
            ],
          ),
        ),
       Container(
 padding: EdgeInsets.all(20),
 child: Row(children: [
  Botao(icon:Icons.call,text:'Ligar'),
  Botao(icon:Icons.location_on,text:'Endereço'),
  Botao(icon:Icons.share,text:'Compartilhar')
   
 ]),

        ),
         Container(
          padding: EdgeInsets.all(20),
          child: Text('O Muro das Lamentações ou Muro Ocidental é o segundo local mais sagrado do judaísmo, atrás somente do Santo dos Santos, no monte do Templo. Trata-se do único vestígio do antigo Templo de Herodes, erguido por Herodes, o Grande no lugar do Templo de Jerusalém inicial.'),
         )
        ]
        
      )
     )
     );
  }
}
class Botao extends StatelessWidget{
  Botao({
    this.onPress,
    required this.icon,
    required this.text
  });
 void Function()? onPress;
  IconData icon;
  String text;
  @override
  Widget build(BuildContext context){
    return Expanded(
    child:TextButton(
      onPressed:onPress,
      child:Column(
         children: [
                    Icon(icon,color: Colors.blue),
                    Text(text,style: TextStyle(color:Colors.black))
                  ],
      )
    )
  );
  }
}