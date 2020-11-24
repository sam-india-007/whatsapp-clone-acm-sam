import 'package:flutter/material.dart';
import 'package:whatsapp_clone/router.dart';

void main() {
  runApp(WelcomeScreen());

}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: Routes.generateRoute,
      home: DefaultTabController(
        length: 1,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Welcome to WhatsApp Clone"),
          ),
          body: TabBarView(
            children:[

              Builder(
                builder: (context) => Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate back to first route when tapped.
                      Navigator.pushNamed(context, '/verify');
                    },
                    child: Text('AGREE AND CONTINUE'),

                  ),
                ),
              ),
            ],
          ),
          /*bottomNavigationBar: BottomAppBar(
            child: Builder(
              builder: (context) => Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate back to first route when tapped.
                    Navigator.pushNamed(context, '/verify');
                  },
                  child: Text('AGREE AND CONTINUE'),

                ),
              ),
            ),
          ),*/
        ),
      ),
    );
  }
}


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: Routes.generateRoute,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: 'CHATS'),
                Tab(text: 'STATUS'),
                Tab(text: 'CALLS'),
              ],
            ),
            title: Text('WhatsApp Clone'),


          ),
          body: TabBarView(
            children: [
              Builder(
                builder: (context) => Center(
                  child: RaisedButton(
                    child: Text("Chat Screen"),
                    onPressed: () => Navigator.pushNamed(context, '/chat'),
                  ),

                ),
              ),
              Icon(Icons.directions_transit),
              Builder(
                builder: (context) => Center(
                  child: RaisedButton(
                    child: Text("Welcome"),
                    onPressed: () => Navigator.pushNamed(context, '/welcome'),
                  ),

                ),
              ),
              //Icon(Icons.directions_bike),
            ],
          ),

        ),
      ),
    );
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat Screen"),
      ),
      body: ListView(
        children: [
        ElevatedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
            Navigator.pop(context);
          },
          child: Text('Go back!'),

        ),

          TextField(
            decoration: new InputDecoration(
              //labelText: "Enter Message",
              fillColor: Colors.white,
              border: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(25.0),
                borderSide: new BorderSide(
                ),
              ),
              //fillColor: Colors.green
            ),
            keyboardType: TextInputType.multiline,
            minLines: 1,
            maxLines: 5,
          )
        ],
      ),
    );
  }
}



class VerifyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //onGenerateRoute: Routes.generateRoute,
      appBar: AppBar(
        title: Text("Verify your phone number"),
      ),
      body: Column(
        children: [
          Text(''),
          Text(''),
          Text(''),
          Text(''),
          Text('Enter your phone number to verify that it is you'),
          Text(''),
          Text(''),
          Row(
           children: [
             Text('   +   '),
             Container(
               width: 100,
               child: TextField(
                 decoration: new InputDecoration(
                   labelText: "Country Code",
                   fillColor: Colors.white,
                   border: new OutlineInputBorder(
                     borderRadius: new BorderRadius.circular(25.0),
                     borderSide: new BorderSide(
                     ),
                   ),
                   //fillColor: Colors.green
                 ),
                 keyboardType: TextInputType.number,

               ),
             ),
             Text('  '),
             Container(
               width: 250,
               child: TextField(
                 decoration: new InputDecoration(
                   labelText: "Phone Number",
                   fillColor: Colors.white,
                   border: new OutlineInputBorder(
                     borderRadius: new BorderRadius.circular(25.0),
                     borderSide: new BorderSide(
                     ),
                   ),
                   //fillColor: Colors.green
                 ),
                 keyboardType: TextInputType.number,

               ),
             ),
          ],
          ),
          Text(''),
          Text(''),
          Builder(
            builder: (context) => Center(
              child: IconButton(
                icon: Icon(Icons.arrow_forward),


                onPressed: () {
                  Navigator.pushNamed(context, '/main');
                },
              ),
            ),
          ),
        ],
      ),

    );
  }
}