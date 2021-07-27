import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget{
  SecondPage(this.name);
  String name;
  final myController = TextEditingController();
  var nt='';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text("The second page")
      ),
      body:Column(
        
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
        Center(
          child:Text("This is the second page"),
        ),
        Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
        
        Container(
          width: double.infinity,
          child:TextField(
            controller: myController,
            decoration: InputDecoration(hintText: 'enter a new text'),
            onChanged: (text){
              nt = text;
            },
          )
        ),
       RaisedButton(
         child: Text('submit'),
         onPressed: (){
         
       }),
        Text(nt),
       Center(
         child:Icon(Icons.gamepad),
       ),
        
        Center(
          child:
          TextButton(
        onPressed: (){Navigator.pop(context);},
        child:Text("Previous page")
      ),
        )
        
         
        
      
        


      ] )
    );
    
  }
}
