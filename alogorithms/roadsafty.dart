void main(){
List road = [0, 0, 0, 1, 0, 0, 1];
int i=0;
int getdata=0;
 while (i<road.length) {
     if(road[i]==1){
       getdata++;
       i+=3;
     }
     else{
     i++;
     }
 }
 
 print("Output : $getdata");// output 2
}