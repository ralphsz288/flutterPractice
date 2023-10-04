
import 'package:flutter/material.dart';
import '../../classes/contact.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: Container(
        color: Colors.white38,
        child: ListView(
            children: showContacts(),
        ),
      ),
    );
  }

  List<Contact> returnContacts() {
    List<Contact> list = [];

    list.add(
        Contact('Frank Slade', 'Scent of a woman', Icons.sentiment_satisfied));
    list.add(Contact(
        'Jamal Malik', 'The Millionaire', Icons.sentiment_dissatisfied));
    list.add(Contact(
        'Mildred Hayes', 'Three Billboards Outside Ebbing, Missouri',
        Icons.sentiment_dissatisfied));

    return list;
  }

  List<Widget> showContacts() {
    final List<Contact> contacts = returnContacts();
    final List<ListTile> list = [];

    contacts.forEach((element) {
      final container = ListTile(
        title: Text(element.name),
        subtitle: Text(element.subtitle),
        leading: CircleAvatar(backgroundColor: Colors.red,child: Icon(element.icon,color: Colors.black,),),
        trailing: const Icon(Icons.keyboard_arrow_right),
        onTap: () => true,
      );
      list.add(container);
    });
    return list;
  }

}
