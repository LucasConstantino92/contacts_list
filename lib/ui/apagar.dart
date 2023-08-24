/*import 'package:contact_list/helpers/contact_helper.dart';
import 'package:flutter/material.dart';

class Apagar extends StatefulWidget {
  final Contact? contact;

  const ContactPage({Key? key, this.contact}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {

  late Contact _editedContact;

  @override
  void initState() {
    super.initState();
    _editedContact = widget.contact ?? Contact.fromMap({});
  }

  @override
  Widget build(BuildContext context) {
    String appBarTitle = _editedContact.name.isEmpty ? "Novo Contato" : _editedContact.name;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(appBarTitle),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: const Icon(Icons.save),
      ),
    );
  }
}*/


