import 'package:flutter/material.dart';
import 'package:new_project/presentation/views/contacts_lists_builder.dart';

import '../../business_logic/app_cubit/app_cubit.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  late List<Map> contactsList;
  @override
  void didChangeDependencies() {
    contactsList = AppCubit.get(context).contacts;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ContactsListsBuilder(
      contacts: contactsList,
      noContactsText: 'No Inserted Contacts Yet..',
      contactType: "all",
    );
  }
}
