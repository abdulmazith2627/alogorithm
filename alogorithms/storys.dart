void main() {

List<List<int>> scene = [

[1, 2, 3],

[4, 5, 6],

[7, 8, 9]

];

int factor = 3;

List getscene = [];

for (var row in scene) {

List<int> getscenerow = [];

for (var value in row) {

getscenerow.add(value * factor);

}

getscene.add(getscenerow);

}

print(getscene);// output : [[3, 6, 9], [12, 15, 18], [21, 24, 27]]

}