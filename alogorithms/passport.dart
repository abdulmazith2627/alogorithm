import 'dart:io';
class Passport {
    
 List country=[
   "AFG", "ALB", "DZA", "AND", "AGO", "ARG", "ARM", "AUS", "AUT", "AZE",
    "BHS", "BHR", "BGD", "BRB", "BLR", "BEL", "BLZ", "BEN", "BTN", "BOL",
    "BIH", "BWA", "BRA", "BRN", "BGR", "BFA", "BDI", "CPV", "KHM", "CMR",
    "CAN", "CAF", "TCD", "CHL", "CHN", "COL", "COM", "COG", "COD", "CRI",
    "CIV", "HRV", "CUB", "CYP", "CZE", "DNK", "DJI", "DMA", "DOM", "ECU",
    "EGY", "SLV", "GNQ", "ERI", "EST", "SWZ", "ETH", "FJI", "FIN", "FRA",
    "GAB", "GMB", "GEO", "DEU", "GHA", "GRC", "GRD", "GTM", "GIN", "GNB",
    "GUY", "HTI", "HND", "HUN", "ISL", "IND", "IDN", "IRN", "IRQ", "IRL",
    "ISR", "ITA", "JAM", "JPN", "JOR", "KAZ", "KEN", "KIR", "PRK", "KOR",
    "KWT", "KGZ", "LAO", "LVA", "LBN", "LSO", "LBR", "LBY", "LIE", "LTU",
    "LUX", "MDG", "MWI", "MYS", "MDV", "MLI", "MLT", "MHL", "MRT", "MUS","USA"
 ];
 
  void passPortVerification(String userpassport) {
    // check a length of userpassport
    if (userpassport.length > 10) {
      
      String getcountrycode = userpassport.substring(
          0, 3); // get country letter code from userpassport
      if (country.contains(getcountrycode)) {
        String getnumber = userpassport.substring(3, 12);
           // check a userpassport number length == 9 
        if (getnumber.length == 9) {
          String getdate = userpassport.substring(12, 22);
          DateTime datetime = DateTime.parse(getdate);// string conveter to datetime
          DateTime today = DateTime.now();// get current data and time
          if (datetime.isAfter(today) || datetime.isAtSameMomentAs(today)) {// check the userpassport is expired or not 
            if (RegExp(r'[!@#\$%^&*()_+]').hasMatch(userpassport)) {// check the any this type of value in  r'[!@#\$%^&*()_+] userpassport' 
              if (!userpassport.contains(' ')) {// check any space in userpassport
                if (userpassport.contains("EMB") ||userpassport.contains("CONS") ||userpassport.contains("GOV")) { //this conditions will check wheather these domains are there or not in passport
                  print("your passport id : $userpassport");
                  print("valid passport");
                } else {
                  print("invalid passport");
                }
              } else {
                print("invalid passport");
              }
            } else {
              print("invalid passport");
            }
          } else {
            print("Your passport is expired");
          }
        } else {
          print("invalid passport");
        }
      } else {
        print("invalid country code");
      }
    } else {
      print("invalid Passport");
    }
  }
}
void main() {
  Passport passport = Passport();
  print("Enter the passport code : ");
  String getuserpassport = stdin.readLineSync()!;
  passport.passPortVerification(getuserpassport.toUpperCase());
}
