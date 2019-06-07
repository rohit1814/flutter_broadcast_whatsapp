# flutter_broadcast_whatsapp

A flutter plugin that will broadcast whatsapp messages to the five users simultaneously.

## Installation 

To use the plugin, add 'flutter_broadcast_whatsapp' as a dependency in your pubspec.yaml file.

## Plugin package link

[plug-in package](https://pub.dev/packages/flutter_broadcast_whatsapp),

## Usage

    import 'package:flutter/material.dart';
    import 'package:flutter_broadcast_whatsapp/flutter_broadcast_whatsapp.dart';
    
    void main() => runApp(MyApp());
    
    class MyApp extends StatefulWidget {
      @override
      _MyAppState createState() => _MyAppState();
    }
    
    class _MyAppState extends State<MyApp> {    
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
            appBar: AppBar(
            title: const Text('Flutter Broadcast Whatsapp Message'),
        ),
        body: Center(
        child: MaterialButton(onPressed: (){
        FlutterBroadcastWhatsapp.sendBroadcastMessage("Hello Flutter");
        },
        child: Text('Running on: $_platformVersion\n'),
        )
       ),
      ),
     );
    }
   }
   
## Example 

    Refer to the example directory in the flutter app.