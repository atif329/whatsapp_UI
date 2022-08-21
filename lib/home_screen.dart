import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
          title: const Text('Whatsapp'),
          backgroundColor: Colors.teal,
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('CHATS'),
              ),
              Tab(
                child: Text('STATUS'),
              ),
              Tab(
                child: Text('CALLS'),
              ),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            const SizedBox(width: 10),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => const [
                PopupMenuItem(
                  value: '1',
                  child: Text('New Group'),
                ),
                PopupMenuItem(
                  value: '2',
                  child: Text('New Broadcast'),
                ),
                PopupMenuItem(
                  value: '3',
                  child: Text('Linked Devices'),
                ),
                PopupMenuItem(
                  value: '4',
                  child: Text('Starred Messages'),
                ),
                PopupMenuItem(
                  value: '5',
                  child: Text('Settings'),
                ),
              ],
            )
          ],
        ),
        body: TabBarView(
          children: [
            const Text('Camera'),
            ListView.builder(
              itemCount: 9,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/1906157/pexels-photo-1906157.jpeg?cs=srgb&dl=pexels-matheus-bertelli-1906157.jpg&fm=jpg'),
                  ),
                  title: Text('Malik Atif Ali '),
                  subtitle: Text('Are you learning Flutter?'),
                  trailing: Text('3:27 pm'),
                );
              },
            ),
            ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('RECENT UPDATES'),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.green, width: 3),
                            ),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://images.pexels.com/photos/1906157/pexels-photo-1906157.jpeg?cs=srgb&dl=pexels-matheus-bertelli-1906157.jpg&fm=jpg'),
                            ),
                          ),
                          title: const Text('Malik Atif Ali '),
                          subtitle: const Text('26 minutes ago'),
                        ),
                      ],
                    ),
                  );
                } else {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey, width: 3),
                          ),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/1906157/pexels-photo-1906157.jpeg?cs=srgb&dl=pexels-matheus-bertelli-1906157.jpg&fm=jpg'),
                          ),
                        ),
                        title: const Text('Atif Ali '),
                        subtitle: const Text('35 minutes ago'),
                      ),
                    ],
                  );
                }
              },
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/1906157/pexels-photo-1906157.jpeg?cs=srgb&dl=pexels-matheus-bertelli-1906157.jpg&fm=jpg'),
                  ),
                  title: const Text('Malik Atif Ali '),
                  subtitle: Text(index / 2 == 0
                      ? 'You Missed audio call'
                      : 'Call time is 5m 33s'),
                  trailing:
                      Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
