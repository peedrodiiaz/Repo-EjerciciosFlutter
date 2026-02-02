import 'package:flutter/material.dart';

class PeopleListView extends StatefulWidget {
  const PeopleListView({super.key});

  @override
  State<PeopleListView> createState() => _PeopleListViewState();
}

class _PeopleListViewState extends State<PeopleListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Star Wars People'),
      ),
      body: ListView.builder(
        itemCount: 0,
        itemBuilder: (context, index) {
          return ListTile(
            title: const Text('Name'),
            subtitle: const Text('Details'),
          );
        },
      ),
    );
  }
}