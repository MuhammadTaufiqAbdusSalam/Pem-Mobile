void main(List<String> arguments) {
//   var list1 = [1, 2, 3];
//   var list2 = [0, 1, 3];
//   print(list1);
//   print(list2);
//   print(list2.length);
//   list1 = [1, 2, 3];
//   print(list1);
//   var list3 = [0, ...?list1];
//   print(list3.length);
//   var nim = [2, 2, 4, 1, 7, 6, 0, 0, 4, 0];
//   var list4 = [0, ...?nim];
//   print(list4);
//   print(list4.length);
// bool promoActive = false;
//   var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
// print(nav);
// String login ="Home";
//   var nav2 = [
//     'Home',
//     'Furniture',
//     'Plants',
//     if (login case 'Manager') 'Inventory'
//   ];
//   print(nav2);
var listOfInts = [1, 2, 3];
var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
assert(listOfStrings[1] == '#1');
print(listOfStrings);
}
