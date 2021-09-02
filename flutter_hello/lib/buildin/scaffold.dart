import 'package:flutter/material.dart';

class ScaffoldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sample Code'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('This is a snackbar')));
              },
            ),
            IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next page',
              onPressed: () {
                Navigator.pushNamed(context, '/button');
              },
            ),
          ],
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                icon: Icon(Icons.beach_access_sharp),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
          ],
          currentIndex: 0,
          selectedItemColor: Theme.of(context).colorScheme.onPrimary,
          onTap: (int index) => {print('$index')},
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {print("click")},
          tooltip: 'btn',
          child: const Icon(Icons.add),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text("It's cloudy here"),
            ),
            Center(
              child: Column(
                children: [
                  const Text('We move under cover and we move as one'),
                  const Text('Through the night, we have one shot to live another day'),
                  const Text('We cannot let a stray gunshot give us away'),
                  const Text('We will fight up close, seize the moment and stay in it'),
                  const Text('It’s either that or meet the business end of a bayonet'),
                  const Text('The code word is ‘Rochambeau,’ dig me?'),
                  Text('Rochambeau!', style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0)),
                  Row(
                    children: [
                      Expanded(
                        child: Text('Deliver features faster', textAlign: TextAlign.center),
                      ),
                      Expanded(
                        child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
                      ),
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.contain, // otherwise the logo will be tiny
                          child: FlutterLogo(),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}
