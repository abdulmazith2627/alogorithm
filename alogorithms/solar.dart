void main(){

  List panels = [
    {"max_capacity": 200, "efficiency_factor": 0.8},
    {"max_capacity": 160, "efficiency_factor": 0.6},
    {"max_capacity": 300, "efficiency_factor": 0.75}
];

num energy=0;

for(var i in panels){
   energy+=(i["max_capacity"]*i["efficiency_factor"]);
}
print(energy.toInt());// output : 481
}