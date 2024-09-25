void main(List<String> arguments) {
//   var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
// print(halogens);
// var names1 = <String>{};
// Set<String> names2 = {}; // This works, too.
// var names3 = {}; // Creates a map, not a set.

// print(names1);
// print(names2);
// print(names3);

  var names1 = <String>{};
  Set<String> names2 = {};
  //var names3 = {};
  names1.add("Muhammad Taufiq Abdus Salam");
  names1.add("2241760040");

  names2.addAll({"Muhammad Taufiq Abdus Salam", "2241760040"});

  print(names1);
  print(names2);
  //print(names3);
}
