import 'package:flutter/material.dart';
import 'package:flutter_essential/fragment/alarm.dart';
import 'package:flutter_essential/fragment/bank.dart';
import 'package:flutter_essential/fragment/contact_mail.dart';
import 'package:flutter_essential/fragment/email.dart';
import 'package:flutter_essential/fragment/home.dart';
import 'package:flutter_essential/fragment/person.dart';
import 'package:flutter_essential/fragment/search.dart';
import 'package:flutter_essential/fragment/setting.dart';

class TabBarDesign extends StatelessWidget {
  const TabBarDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Appbar"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
                Container(
                  height: 46,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(25.0)
                  ),
                  child: TabBar(
                    isScrollable: true,
                    indicator: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    tabs: const [
                    Tab(text:"Home"),
                Tab(text:"search"),
                Tab(text:"setting"),
                Tab(text:"eamil"),
                Tab(text:"contact mail"),
                Tab(text:"person"),
                Tab(text:"alarm"),
                Tab(text:"bank"),
                  ],
                  ),
                ),
              const Expanded(
                child: TabBarView(
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
            ],
          ),
        )
      ),
    );
  }
}
