# flutter_broadcast_whatsapp

A new Flutter plugin that will broadcast whatsapp messages to the five users simultaneously.

## Installation 

To use the plugin, add 'flutter_broadcast_whatsapp' as a dependency in your pubspec.yaml file.


This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

## Example

    import 'package:flutter/material.dart';
    import 'dart:async';
    
    import 'package:flutter/services.dart';
    import 'package:flutter_broadcast_whatsapp/flutter_broadcast_whatsapp.dart';
    
    void main() => runApp(MyApp());
    
    class MyApp extends StatefulWidget {
      @override
      _MyAppState createState() => _MyAppState();
    }
    
    class _MyAppState extends State<MyApp> {
      String _platformVersion = 'Unknown';
    
      @override
      void initState() {
        super.initState();
        initPlatformState();
      }
    
      // Platform messages are asynchronous, so we initialize in an async method.
      Future<void> initPlatformState() async {
        String platformVersion;
        // Platform messages may fail, so we use a try/catch PlatformException.
        try {
          platformVersion = await FlutterBroadcastWhatsapp.platformVersion;
        } on PlatformException {
          platformVersion = 'Failed to get platform version.';
        }
    
        // If the widget was removed from the tree while the asynchronous platform
        // message was in flight, we want to discard the reply rather than calling
        // setState to update our non-existent appearance.
        if (!mounted) return;
    
        setState(() {
          _platformVersion = platformVersion;
        });
      }
    
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
    
