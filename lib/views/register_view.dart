import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final gap = const SizedBox(
    height: 10,
  );
  List<String> lstBatch = ['30-A', '30-B', '29-A', '29-B'];
  List<String> lstCourse = ['Flutter', 'React Js', 'Data Science', 'Django'];
  List<String> course = [];
  String? batch;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(children: [
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'First Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            gap,
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Last Name',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
            gap,
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Phone',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
            gap,
            DropdownButtonFormField(
              decoration: const InputDecoration(
                labelText: 'Select Batch',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
              ),
              items: lstBatch
                  .map(
                    (value) => DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  batch = value;
                });
              },
            ),
            gap,
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(5)),
              ),
              child: MultiSelectDialogField(
                buttonIcon: const Icon(Icons.search),
                searchable: true,
                items: lstCourse.map((e) => MultiSelectItem(e, e)).toList(),
                listType: MultiSelectListType.CHIP,
                onConfirm: (values) {
                  course = values;
                },
              ),
            ),
            gap,
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            gap,
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
            gap,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Register'),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
