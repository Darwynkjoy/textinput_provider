import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:textinput_provider/textprovider.dart';

class TextinputProvider extends StatefulWidget{
  @override
  State<TextinputProvider> createState()=> _textinputState();
}

class _textinputState extends State<TextinputProvider>{
  @override
  Widget build(BuildContext context){
    final TextInput=Provider.of<Textprovider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("text input ",style: TextStyle(fontSize: 25,color: Colors.black),),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            onChanged: TextInput.changedtext,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "enter text",
            ),
            ),
            SizedBox(height: 20,),
            Text("you typed:${TextInput.Text}",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}