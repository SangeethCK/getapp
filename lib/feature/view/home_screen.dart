import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:getapp/api/api_data.dart';
import 'package:getapp/models/name.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final GetData _getData = GetData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              FutureBuilder<List<ListData>>(
                  future: _getData.getAPi(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return CircularProgressIndicator();
                    }
                    return SizedBox(
                      child: ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Text(snapshot.data![index].name),
                              title: Text(snapshot.data![index].email),
                              subtitle: Text(snapshot.data![index].status),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Divider();
                          },
                          itemCount: snapshot.data!.length),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
