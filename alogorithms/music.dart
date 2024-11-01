String rearrange(String s) {
Map<String, int> f = {};
for (var ch in s.split('')) {
f[ch] = (f[ch] ?? 0) + 1;
}
List<MapEntry<String, int>> char = f.entries.toList()
..sort((a, b) => b.value.compareTo(a.value));

int maxF = char[0].value;
if (maxF > (s.length + 1) / 2) return "Not Possible";
List<String> result = List.filled(s.length, '');
int i = 0;
for (var entrys in char) {
String ch = entrys.key;
int count = entrys.value;

while (count > 0) {
result[i] = ch;
i += 2;
if (i >= result.length) {
i = 1;
}
count--;
}
}
return result.join('');
}
void main() {
String s = "BCBBC";
print(rearrange(s)); // Output:BCBCB
}