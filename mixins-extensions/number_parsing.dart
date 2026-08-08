extension NumberParsing on String {
  int? toIntOrNull() => int.tryParse(this);
}

//only named extensions can be imported
