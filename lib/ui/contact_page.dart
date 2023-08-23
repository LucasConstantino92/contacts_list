import 'dart:io';

import 'package:contact_list/helpers/contact_helper.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
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
    if (widget.contact != null) {
      _editedContact = Contact.fromMap(widget.contact!.toMap());
    } else {
      _editedContact = Contact(id: 0, name: '', email: '', phone: '', img: '');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(_editedContact.name.isEmpty ? "Novo Contato" : _editedContact.name),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: const Icon(Icons.save),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: _editedContact.img.isNotEmpty
                      ? FileImage(File(_editedContact.img))
                      : AssetImage("images/person.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
