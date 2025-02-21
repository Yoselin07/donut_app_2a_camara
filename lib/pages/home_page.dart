import 'package:donut_app_2a_camara/taps/burger_tab.dart';
import 'package:donut_app_2a_camara/taps/donut_tab.dart';
import 'package:donut_app_2a_camara/taps/pancakes_tab.dart';
import 'package:donut_app_2a_camara/taps/pizza_tab.dart';
import 'package:donut_app_2a_camara/taps/smoothie_tab.dart';
import 'package:donut_app_2a_camara/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> myTabs = [
    //Donut tab
    const MyTab(iconPath: 'lib/icons/donut.png'),
    //Burguer tab
    const MyTab(iconPath: 'lib/icons/burger.png'),
    //Smoothie tab
    const MyTab(iconPath: 'lib/icons/smoothie.png'),
    //Pancake tab
    const MyTab(iconPath: 'lib/icons/pancakes.png'),
    //Pizza tab
    const MyTab(iconPath: 'lib/icons/pizza.png'),
  ];
  @override
  Widget build(BuildContext context) {
    //Este widget sirve para gestionar las pestañas
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          //Ícono de la Izquierda
          leading: Icon(
            Icons.menu,
            color: Colors.grey[800],
          ),
          actions: [Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Icon(Icons.person),
          )
          ],
        ),
        body: Column(
          children: [
            //Texto "I want to Eat"
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Row(
                children: [
                  Text("I want to ",
                  style: TextStyle(fontSize: 32)),
                  Text("Eat", 
                  style: TextStyle(
                    //Tamaño de letra
                    fontSize: 32,
                    //Negritas
                    fontWeight: FontWeight.bold,
                    //Subrayado
                    decoration: TextDecoration.underline)
                  ),
                ],
              ),
            ),
            //Tap bar (Pestañas)
            TabBar(tabs: myTabs),
            //Tab bar View (Contenido de pestañas)
            Expanded(
              child: TabBarView(
                children: [
                DonutTab(),
                BurgerTab(),
                SmoothieTab(),
                PanCakesTab(),
                PizzaTab(),
              ],),
            )
            //Carrito
          ],)
      ),
    );
  }
}