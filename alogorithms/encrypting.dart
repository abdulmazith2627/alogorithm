

void main() {
  List<String> keywords = ["Jhon","Petter","Aria","Lila","Ian"];
  int shiftValue = 3;
  List encrypted=[];
    List decrypted=[];


  for(String key in keywords){
  String encryptedlettere='';
    for (var i = 0; i < key.length; i++) {
      int code=key.codeUnitAt(i);
        if(code>=65 && code<=90){
      code = ((code - 65 + shiftValue) % 26) + 65;
     
       }

      else if(code>=97 && code<=122){
       code = ((code - 97 + shiftValue) % 26) + 97; 
       }
      

       encryptedlettere+= String.fromCharCode(code);
      
    }
 encrypted.add(encryptedlettere);
  }

   print(encrypted);



 for (String encrypt in encrypted) {
   String decodeletter='';

  for (var i = 0; i < encrypt.length; i++) {
    int code=encrypt.codeUnitAt(i);

     if(code>=65&&code<=90){// Uppercase
      code=((code-65-shiftValue+26)%26)+65;
     }
     else if(code>=97&&code<=122){// lowercase
       code=((code-97-shiftValue+26)%26)+97;
     }
     
     decodeletter+=String.fromCharCode(code);

  }
       decrypted.add(decodeletter);
 }

   print(decrypted);

}
