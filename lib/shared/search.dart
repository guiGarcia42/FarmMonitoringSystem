import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  final String text;
  final ValueChanged<String> onChanged;
  final String hintText;

  const Search({
    super.key,
    required this.text,
    required this.onChanged,
    required this.hintText,
  });

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final style = widget.text.isEmpty ? Colors.black54 : Colors.black;

    return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(color: Colors.black26),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          icon: Icon(Icons.search, color: style),
          suffixIcon: widget.text.isNotEmpty
              ? GestureDetector(
                  child: Icon(Icons.close, color: style),
                  onTap: () {
                    controller.clear();
                    widget.onChanged('');
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                )
              : null,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: style),
          border: InputBorder.none,
        ),
        style: TextStyle(color: style),
        onChanged: widget.onChanged,
      ),
    );
  }
}
