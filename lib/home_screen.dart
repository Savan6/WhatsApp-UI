import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: const Text(
              'WhatsApp',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            bottom: const TabBar(tabs: [
              Tab(
                child: Icon(
                  Icons.camera_alt,
                ),
              ),
              Tab(
                child: Text(
                  'Chats',
                ),
              ),
              Tab(
                child: Text(
                  'Status',
                ),
              ),
              Tab(
                child: Text(
                  'Calls',
                ),
              )
            ]),
            actions: [
              const Icon(Icons.search, color: Colors.white),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (
                    context,
                  ) =>
                      [
                        const PopupMenuItem(
                            value: '1', child: Text('New Group')),
                        const PopupMenuItem(
                            value: '2', child: Text('Settings')),
                        const PopupMenuItem(
                            value: '3', child: Text('Logout')),
                      ]),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          body: TabBarView(children: [
            const Text('Camera'),

            //for chats
            
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    title: Text('John Wick'),
                    subtitle: Text('Where is my dog?'),
                    trailing: Text('5.24am'),
                  );
                }),

                // for status

            ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('New updates'),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: const Color.fromRGBO(76, 175, 80, 1),
                                      width: 3)),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                              ),
                            ),
                            title: const Text('John Wick'),
                            subtitle: const Text('30m ago'),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: const Color.fromRGBO(76, 175, 80, 1),
                                width: 3)),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                      ),
                      title: const Text('John Wick'),
                      subtitle: const Text('30m ago'),
                    );
                  }
                }),
                
                //for calls

            ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    title: const Text('John Wick'),
                    subtitle: Text(index / 2 == 0
                        ? 'you missed audio call' 
                        : 'call duration 10:23s', style: const TextStyle(color: Colors.red),),
                    trailing:
                        Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                  );
                }),
          ]),
        ));
  }
}
