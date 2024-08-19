import 'package:flutter/material.dart';

class PostPageFour extends StatelessWidget {
  const PostPageFour({super.key, required this.previous, required this.next});

  final Function() previous;
  final Function() next;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Container(
        child: Column(
          children: [
            _buildSection(title: "Enter State/ District", child: _fieldOption(hint: 'ex : Dhaka ')),
            const SizedBox(
              height: 10,
            ),
            _buildSection(title: "Enter Area", child: _fieldOption(hint: 'ex : Dhanmondi '), ),
            const SizedBox(
              height: 10,
            ),
            _buildSection(title: "Contact Number", child: _fieldOption(hint: 'ex : +8801********* ')),
            const SizedBox(
              height: 10,
            ),
            _buildSection(title: "Short Description", child: _fieldOption(hint: 'ex : this house is fresh and cleaned ')),
            const SizedBox(
              height: 10,
            ),
            const Divider(),

            _buildSection(title: "Sector", child: _fieldOption(hint: 'ex : dhanmondi - 27')),
            const SizedBox(
              height: 10,
            ),
            _buildSection(title: "Road", child: _fieldOption(hint: 'ex : road 9 ')),
            const SizedBox(
              height: 10,
            ),
            _buildSection(title: "House / Plot", child: _fieldOption(hint: 'ex : House 28/9/A ')),
            const SizedBox(
              height: 10,
            ),




            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: previous,
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: const BoxDecoration(color: Colors.yellow),
                        child: const Icon(
                          Icons.arrow_back,
                          size: 34,
                        )),
                  ),
                  GestureDetector(
                    onTap: next,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: const BoxDecoration(color: Colors.yellow),
                      child: const Text(
                        "Finish",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({required String title, required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              "▪",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            Text(
              " $title",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(height: 10),
        child,
      ],
    );
  }

  Widget _fieldOption({required String hint}) {
    return  TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder( borderSide: BorderSide()),
        focusedBorder: const OutlineInputBorder( borderSide: BorderSide()),
        hintText: hint,
      ),
    );
  }
}
