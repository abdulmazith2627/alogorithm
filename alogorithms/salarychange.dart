void main(){

  List<dynamic> employees=[ // list of employees 
     {"name": "Charlie", "salary": 90000, "rating": 4},
    {"name": "Alice", "salary": 50000, "rating": 5},
    {"name": "Bob", "salary": 61000, "rating": 2}
  ];

 double percentage=0;// get employees  percentage depend up on rating

  for (var i in employees ) {// store employees data to i value
    if(i["rating"]==5){// check rating value is ==5
      percentage=0.20;
    }
    else if(i["rating"]==4){// check rating value is ==4
      percentage=0.10;
    }
    else if(i["rating"]==3){// check rating value is ==3
    percentage=0.05;
    }
    else if(i["rating"]<=2){// check rating value is <=2
    percentage=0;
      print("no hike for you");
    }
    else{
      print("some error");
    }
    i["salary"]=i["salary"]+(i["salary"]*percentage).toInt();
    i["rating"]=0;
  }
  print(employees );// output : [{name: Charlie, salary: 99000, rating: 0}, {name: Alice, salary: 60000, rating: 0}, {name: Bob, salary: 73200, rating: 0}]
}
