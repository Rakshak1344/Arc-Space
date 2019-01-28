import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
  final employees = ['tom', 'sam', 'ram', 'jam', 'ragu', 'raju','gam', 'dam', 'dem'];
  final recentEmployees = ['ram', 'jam', 'dam', 'dem'];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(),
        child: ListView(children: [
          ListTile(
            leading: CircleAvatar(),
            title: Text(query),
          )
        ]));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    final suggestionEmployees = query.isEmpty
        ? recentEmployees
        : employees.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
          onTap: () {
            showResults(context);
          },
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/tom.jpg'),
          ),
          title: RichText(
            text: TextSpan(
              text: suggestionEmployees[index].substring(0, query.length),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: suggestionEmployees[index].substring(query.length),
                    style: TextStyle(color: Colors.grey))
              ],
            ),
          )),
      itemCount: suggestionEmployees.length,
    );
  }
}
