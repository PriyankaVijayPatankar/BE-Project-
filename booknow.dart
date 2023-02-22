import 'package:flutter/material.dart';
import 'package:myapp/booking.dart';

class BookNow extends StatefulWidget {
  const BookNow({Key? key}) : super(key: key);

  @override
  State<BookNow> createState() => _BookNowState();
}

class _BookNowState extends State<BookNow> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Booking Credentials",
              style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Booking()));
            },
          ),
        ),
        body: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.person),
                    hintText: 'Enter your full name',
                    labelText: 'Name',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.phone),
                    hintText: 'Enter your contact number',
                    labelText: 'Contact Number',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter valid phone number';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.calendar_today),
                    hintText: 'Enter check-in date',
                    labelText: 'Check-in date',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a valid date';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.calendar_today),
                    hintText: 'Enter check-out date',
                    labelText: 'Check-out date',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a valid date';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.room),
                    hintText: 'Family Cottage / Couple Cottage',
                    labelText: 'Cottage type',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a valid cottage';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: const Icon(Icons.room),
                    hintText: 'Enter number of cottages',
                    labelText: 'Number of Cottages',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a valid date';
                    }
                    return null;
                  },
                ),
                new Container(
                    padding: const EdgeInsets.only(left: 20.0, top: 40.0),
                    child: new RaisedButton(
                      child: const Text('Book'),
                      onPressed: () {
                        // It returns true if the form is valid, otherwise returns false
                        if (_formKey.currentState!.validate()) {
                          AlertDialog(
                              title: const Text('AlertDialog Title'),
                              content: const Text('AlertDialog description'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(context, 'Cancel'),
                                  child: const Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text('OK'),
                                ),
                              ]);

                          // If the form is valid, display a Snackbar.
                          // Scaffold.of(context).showSnackBar(SnackBar(
                          //     content: Text('Data is in processing.')));
                        }
                      },
                    )),
              ],
            )));
  }
}
