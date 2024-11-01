bool distancen(int distance, int fuel) {
  int efficiency = 24;  
  int fueldis = 30;    
  int extraconsumption = 0;  
  
  while (distance > 0) {
    int fuelwant;

    if (distance >= fueldis) {
      fuelwant = (fueldis / efficiency).ceil() + extraconsumption;
      distance -= 30;  
    } else {
     
      fuelwant = (distance / efficiency).ceil() + extraconsumption;
      distance = 0;  
    }

   
    if (fuel >= fuelwant) {
      fuel -= fuelwant;  
      extraconsumption += 1;  
    } else {
      return false; 
    }
  }

  return true;  
}

void main() {

  print(distancen(900, 90));  // Output: true
  print(distancen(70, 4));  // Output: false
}
