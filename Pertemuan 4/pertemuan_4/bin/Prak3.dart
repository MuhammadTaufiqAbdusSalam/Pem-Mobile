void main(List<String> arguments) {
var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1,
  'nama': 'Muhammad Taufiq Abdus salam',
  'NIM': '2241760040',
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
  7: 'Muhammad Taufiq Abdus salam',
  9: '2241760040',
};

print(gifts);
print(nobleGases);
var mhs1 = Map<String, String>();
mhs1['first'] = 'Muhammad Taufiq Abdus Salam';
mhs1['second'] = '2241760040';

var mhs2 = Map<int, String>();
mhs2[2] = 'Muhammad Taufiq Abdus Salam';
mhs2[10] = '2241760040';
print(mhs1);
print(mhs2);
}
