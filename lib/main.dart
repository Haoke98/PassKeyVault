import 'package:all_keeper/models/product.dart';
import 'package:all_keeper/pages/home.dart';
import 'package:all_keeper/pages/messages.dart';
import 'package:all_keeper/pages/settings.dart';
import 'package:all_keeper/pages/shoppinglist.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const DefaultTabController(
          length: 4,
          child: Scaffold(
              body: TabBarView(children: [
                MyHomePage(title: "首页"),
                ShoppingList(products: [
                  Product(name: "A"),
                  Product(name: "B"),
                  Product(name: "C"),
                  Product(name: "D"),
                ]),
                MessagesPage(todos: [
                  Product(name: "睡了没?"),
                  Product(name: "紧急‼️通知📢"),
                  Product(name: "优惠券"),
                  Product(name: "记得晚上想我🤔️")
                ]),
                SettingsPage(todos: [
                  Product(name: "通用设置"),
                  Product(name: "隐私设置"),
                  Product(name: "网络修复"),
                  Product(name: "缓存清理")
                ])
              ]),
              bottomNavigationBar: TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.list),
                ),
                Tab(
                  icon: Icon(Icons.message),
                ),
                Tab(
                  icon: Icon(Icons.settings),
                ),
              ])),
        ));
  }
}

void main() {
  runApp(const MyApp());
}
