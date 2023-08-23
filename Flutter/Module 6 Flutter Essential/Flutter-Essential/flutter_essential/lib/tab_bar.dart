import 'package:flutter/material.dart';
import 'package:flutter_essential/fragment/alarm.dart';
import 'package:flutter_essential/fragment/bank.dart';
import 'package:flutter_essential/fragment/contact_mail.dart';
import 'package:flutter_essential/fragment/email.dart';
import 'package:flutter_essential/fragment/home.dart';
import 'package:flutter_essential/fragment/person.dart';
import 'package:flutter_essential/fragment/search.dart';
import 'package:flutter_essential/fragment/setting.dart';

class TabBarFragment extends StatelessWidget {
  const TabBarFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) { 
    return DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Appbar"),
            bottom: const TabBar(
              isScrollable: true,
              
              tabs: [
                Tab(icon: Icon(Icons.home),text:"Home"),
                Tab(icon: Icon(Icons.search),text:"search"),
                Tab(icon: Icon(Icons.settings),text:"setting"),
                Tab(icon: Icon(Icons.email),text:"eamil"),
                Tab(icon: Icon(Icons.contact_mail),text:"contact mail"),
                Tab(icon: Icon(Icons.person),text:"person"),
                Tab(icon: Icon(Icons.alarm),text:"alarm"),
                Tab(icon: Icon(Icons.food_bank),text:"bank"),
              ],
            ),
          ),
          body:const TabBarView(
            children: [
              HomePage(),
              SearchPage(),
              SettingPage(),
              EmailPage(),
              ContactMailPage(),
              PersonPage(),
              AlarmPage(),
              BankPage(),
            ],
          ),
        ),
    );
  }
}
