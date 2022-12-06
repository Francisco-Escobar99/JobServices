import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:from_end/main.dart';
import 'package:from_end/src/widgets/viewsClient/viewOptions_client.dart';
import 'package:from_end/src/widgets/viewsClient/viewWelcome_client.dart';

const List<Tab> tabs = <Tab>[
  Tab(
    child: Align(
      alignment: Alignment.center,
      child: Text('Top'),
    ),
  ),
  Tab(
    child: Align(
      alignment: Alignment.center,
      child: Text('Todos'),
    ),
  ),
];

class view_members_client extends StatelessWidget {
  const view_members_client({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      // The Builder widget is used to have a different BuildContext to access
      // closest DefaultTabController.
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context)!;
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {
            // Your code goes here.
            // To get index of current tab use tabController.index
          }
        });
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xff29859a),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => const viewoptions_client())));
              },
            ),                                                                                                                                                                                                                             
            bottom: const TabBar (
              indicatorWeight: 3, // 3
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: Color.fromARGB(137, 6, 113, 140),
              ),
              // --------------------------------------------------
              tabs: tabs,
            ),
            title: const Text('M I E M B R O S', style: TextStyle(fontSize: 20, fontFamily: 'Grenze')),
            centerTitle: true,
          ),
          body: TabBarView(
            children: <Widget>[
              Center(child: Column(
                children: [
                  const SizedBox(height: 10),
                  SizedBox(
                    //width: double.infinity,
                    width: 380,
                    height: 90,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(
                          color: Color(0xff29859a),
                          width: 2,
                        )
                      ),
                      child: ListTile(
                        leading: const Icon(Icons.account_circle, color: Color(0xff29859a), size: 50),
                        title: const Text('Francisco Escobar', style: TextStyle(color: Color(0xff29859a), fontWeight: FontWeight.bold),),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text('Carpintero', style: TextStyle(color: Color(0xff29859a))),
                            Row(
                              children: const [
                                Icon(Icons.location_on),
                                Text('Tuxtla Gutierrez, Chiapas')
                              ],
                            )
                          ],
                        ),
                        trailing: Column(
                          children: const [
                            Icon(Icons.grade, color: Color(0xff29859a), size: 30),
                            Text('4.5', style: TextStyle(color: Color(0xff29859a), fontSize: 20),),
                          ],
                        ),
                      ),
                    )
                  ),
                  SizedBox(
                    width: 380,
                    height: 90,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(
                          color: Color(0xff29859a),
                          width: 2,
                        )
                      ),
                      child: ListTile(
                        leading: const Icon(Icons.account_circle, color: Color(0xff29859a), size: 50),
                        title: const Text('Francisco Escobar', style: TextStyle(color: Color(0xff29859a), fontWeight: FontWeight.bold)),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text('Carpintero', style: TextStyle(color: Color(0xff29859a))),
                            Row(
                              children: const [
                                Icon(Icons.location_on),
                                Text('Tuxtla Gutierrez, Chiapas')
                              ],
                            )
                          ],
                        ),
                        trailing: Column(
                          children: const [
                            Icon(Icons.grade, color: Color(0xff29859a), size: 30),
                            Text('4.5', style: TextStyle(color: Color(0xff29859a), fontSize: 20),),
                          ],
                        ),
                      ),
                    )
                  ),
                  SizedBox(
                    width: 380,
                    height: 90,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(
                          color: Color(0xff29859a),
                          width: 2,
                        )
                      ),
                      child: ListTile(
                        leading: const Icon(Icons.account_circle, color: Color(0xff29859a), size: 50),
                        title: const Text('Francisco Escobar', style: TextStyle(color: Color(0xff29859a), fontWeight: FontWeight.bold)),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text('Carpintero', style: TextStyle(color: Color(0xff29859a))),
                            Row(
                              children: const [
                                Icon(Icons.location_on),
                                Text('Tuxtla Gutierrez, Chiapas')
                              ],
                            )
                          ],
                        ),
                        trailing: Column(
                          children: const [
                            Icon(Icons.grade, color: Color(0xff29859a), size: 30),
                            Text('4.5', style: TextStyle(color: Color(0xff29859a), fontSize: 20),),
                          ],
                        ),
                      ),
                    )
                  ),
                  SizedBox(
                    width: 380,
                    height: 90,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(
                          color: Color(0xff29859a),
                          width: 2,
                        )
                      ),
                      child: ListTile(
                        leading: const Icon(Icons.account_circle, color: Color(0xff29859a), size: 50),
                        title: const Text('Francisco Escobar', style: TextStyle(color: Color(0xff29859a), fontWeight: FontWeight.bold)),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text('Carpintero', style: TextStyle(color: Color(0xff29859a))),
                            Row(
                              children: const [
                                Icon(Icons.location_on),
                                Text('Tuxtla Gutierrez, Chiapas')
                              ],
                            )
                          ],
                        ),
                        trailing: Column(
                          children: const [
                            Icon(Icons.grade, color: Color(0xff29859a), size: 30),
                            Text('4.5', style: TextStyle(color: Color(0xff29859a), fontSize: 20),),
                          ],
                        ),
                      ),
                    )
                  ),
                ],
              )),
              Center(child: Column(
                children: [
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 380,
                    height: 90,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(
                          color: Color(0xff29859a),
                          width: 2,
                        )
                      ),
                      child: ListTile(
                        leading: const Icon(Icons.account_circle, color: Color(0xff29859a), size: 50),
                        title: const Text('Roberto Carlos', style: TextStyle(color: Color(0xff29859a), fontWeight: FontWeight.bold)),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text('Electricista', style: TextStyle(color: Color(0xff29859a))),
                            Row(
                              children: const [
                                Icon(Icons.location_on),
                                Text('Suchiapa, Chiapas')
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ),
                  SizedBox(
                    width: 380,
                    height: 90,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(
                          color: Color(0xff29859a),
                          width: 2,
                        )
                      ),
                      child: ListTile(
                        leading: const Icon(Icons.account_circle, color: Color(0xff29859a), size: 50),
                        title: const Text('Roberto Carlos', style: TextStyle(color: Color(0xff29859a), fontWeight: FontWeight.bold)),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text('Electricista', style: TextStyle(color: Color(0xff29859a))),
                            Row(
                              children: const [
                                Icon(Icons.location_on),
                                Text('Suchiapa, Chiapas')
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ),
                  SizedBox(
                    width: 380,
                    height: 90,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(
                          color: Color(0xff29859a),
                          width: 2,
                        )
                      ),
                      child: ListTile(
                        leading: const Icon(Icons.account_circle, color: Color(0xff29859a), size: 50),
                        title: const Text('Roberto Carlos', style: TextStyle(color: Color(0xff29859a), fontWeight: FontWeight.bold)),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text('Electricista', style: TextStyle(color: Color(0xff29859a))),
                            Row(
                              children: const [
                                Icon(Icons.location_on),
                                Text('Suchiapa, Chiapas')
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ),
                  SizedBox(
                    width: 380,
                    height: 90,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(
                          color: Color(0xff29859a),
                          width: 2,
                        )
                      ),
                      child: ListTile(
                        leading: const Icon(Icons.account_circle, color: Color(0xff29859a), size: 50),
                        title: const Text('Roberto Carlos', style: TextStyle(color: Color(0xff29859a), fontWeight: FontWeight.bold)),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text('Electricista', style: TextStyle(color: Color(0xff29859a))),
                            Row(
                              children: const [
                                Icon(Icons.location_on),
                                Text('Suchiapa, Chiapas')
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ),
                ],
              )),
            ]
          ),
        );
      }),
    );
  }
}