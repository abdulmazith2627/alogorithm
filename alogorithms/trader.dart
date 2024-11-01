void main(){

  int energy =20;
  List<int> goods=[15,10,15];
  List<int> travel_energy=[5,10,18];
  List<int> tradeget_energy=[5, 10, 5];

  int gettotal=0;


  for(int i=0;i<goods.length;i++){
    if(energy>=travel_energy[i]){

      energy -=travel_energy[i];
        gettotal+=goods[i];
      energy +=tradeget_energy[i];
      print("energy :  $energy");

    }
    else{
      print("No energy have");
      
    }
   
  }


 print("Total goods collected :  $gettotal");// output : 40
}