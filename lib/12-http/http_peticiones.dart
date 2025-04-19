import 'package:flutter/material.dart';
import 'package:learnig_flutter_series/12-http/http_services.dart';
import 'package:learnig_flutter_series/12-http/user_maolde.dart';

class PeticionesHttp extends StatefulWidget {
  const PeticionesHttp({super.key});

  @override
  State<PeticionesHttp> createState() => _PeticionesHttpState();
}

class _PeticionesHttpState extends State<PeticionesHttp> {
  late Future<List<Users>> _futureUsers;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _futureUsers = ApiServices.fetchUserWithHttp();
    //_futureUsers = ApiServices.fectchUserWithDio();
    _futureUsers = ApiServices.fetchUserWithHttpWithModel();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Users>>(
      future: _futureUsers,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          final users = snapshot.data!;
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              return ListTile(
                title: Text(user.name),
                subtitle: Text(user.email),
              );
            },
          );
        }
      },
    );
  }
}
