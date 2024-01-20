import 'dart:io';

void main() {
  
  while (true) {
    stdout.writeln("What do you want to know?");
    stdout.writeln("1. Visit a patient");
    stdout.writeln("2. Know about appointments");
    stdout.writeln("3. For knowing doctor's Fees");
    stdout.writeln("4. Admit a patient");
    stdout.writeln("5. Quit");
  
    String choice = stdin.readLineSync()!.trim();
    switch (choice) {



      //Visit a patient
      case"1":
 Map<String, String> visitors = {
   "visitor name": "Inaaya", "Number": "92345672"
 };
 while (true) {
   stdout.write("Enter visitor name: ");
   String visitorName = stdin.readLineSync()!.trim();
   if (visitorName.toLowerCase() == 'quit') {
     break;
   }
   stdout.write("Enter visitor number: ");
  String visitorNumber = stdin.readLineSync()!.trim();
   visitors["visitor name"] = visitorName;
   visitors["Number"] = visitorNumber;
   stdout.writeln("Visitor added successfully!");
    stdout.writeln("Updated visitor information: $visitors");
   break;
 }
 break;



 //Admit a Patient
 case"4":
  Map<int, String> rooms = {
    1: "Occupied",
    2: "Free",
    3: "Free",
    4: "Occupied",
    5: "Free",
  };
  int freeRooms = 0;
  List<int> emptyRoomNumbers = [];
  rooms.forEach((roomNumber, status) {
    if (status == "Free") {
      freeRooms++;
      emptyRoomNumbers.add(roomNumber);
    }
  });
  print("There are $freeRooms free rooms out of ${rooms.length}.");
  print("Empty room numbers: $emptyRoomNumbers");
  while (true) {
    stdout.writeln("Do you want to admit a new patient? (y/n):");
    String choice = stdin.readLineSync()!.toLowerCase();
    if (choice != 'yes') {
      break;
    }
    if (freeRooms == 0) {
      stdout.writeln("Sorry, there are no available rooms at the moment.");
      continue;
    }
    stdout.writeln("Enter patient's name:");
    String patientName = stdin.readLineSync()!.trim();
    stdout.writeln("Enter patient's contact number:");
    String contactNumber = stdin.readLineSync()!.trim();
    stdout.writeln("Enter patient's needs (e.g., single room, ICU, etc.):");
    String patientNeeds = stdin.readLineSync()!.trim();
    int assignedRoom = emptyRoomNumbers.first; 
    rooms[assignedRoom] = "Occupied";
    emptyRoomNumbers.remove(assignedRoom);
    freeRooms--;
    stdout.writeln("Patient $patientName has been assigned room $assignedRoom.");
    stdout.writeln("Patients name is $patientName, Number is $contactNumber and patients need was $patientNeeds.");
    break;
  }
  break;



  //know about appointments
  case"2":
  while (true) {
  stdout.writeln("Which type of doctor you want to meet.");
    stdout.writeln("1. Internal Medicine:");
    stdout.writeln("2. Cardiologists:");
    stdout.writeln("3. Dermatologists:");
    stdout.writeln("4. Neurologists:");
    stdout.writeln("5. Psychiatrists:");
     stdout.writeln("6. Quit:");


    String choice = stdin.readLineSync()!.trim();

    switch (choice) {
      
      
      //Internal medicine
      case"1":
      Map<String, String> InternalMedicine = {
     "smith"	:"Tuesday 10am-11am",
     "jones" :	"Monday 3pm-2pm"
    };
    print("Available doctors:");
 InternalMedicine.forEach((doctor, timings) => print("- $doctor"));
 while (true) {
   stdout.write("Enter the name of the doctor to view their timings or quit: ");
   final isd = stdin.readLineSync()!.toLowerCase();
   if (isd == 'quit') {
    stdout.writeln("Exiting program....");
        stdout.writeln("Thanks for visiting the program.");
     break;
   }
   if (InternalMedicine.containsKey(isd)) {
     final timings = InternalMedicine[isd];
     print("Dr. $isd's timings: $timings");
     break;
   } else {
     print("Doctor is not available");
   }
   break;
 }
 
 
 //Cardiologists
 case"2":
      Map<String, String> Cardiologists = {
     "adams"	:"Wednesday 10am-2pm",
     "brown"	:"Thursday 10am-1pm"
    };
    print("Available doctors:");
 Cardiologists.forEach((doctor, timings) => print("- $doctor"));
 while (true) {
   stdout.write("Enter the name of the doctor to view their timings or quit: ");
   final isd = stdin.readLineSync()!.toLowerCase();
   if (isd == 'quit') {
     stdout.writeln("Exiting program....");
        stdout.writeln("Thanks for visiting the program.");
     break;
   }
   if (Cardiologists.containsKey(isd)) {
     final timings = Cardiologists[isd];
     print("Dr. $isd's timings: $timings");
     break;
   } else {
     print("Doctor is not available");
   }
   break;
 }


 //Dermatologists
  case"3":
      Map<String, String> Dermatologists = {
     "williams"	:"Thursday 2pm-5pm",
      "miller"	:"Friday 3pm-4pm"
    };
    print("Available doctors:");
 Dermatologists.forEach((doctor, timings) => print("- $doctor"));
 while (true) {
   stdout.write("Enter the name of the doctor to view their timings or quit: ");
   final isd = stdin.readLineSync()!.toLowerCase();
   if (isd == 'quit') {
      stdout.writeln("Exiting program....");
        stdout.writeln("Thanks for visiting the program.");
     break;
   }
   if (Dermatologists.containsKey(isd)) {
     final timings =Dermatologists[isd];
     print("Dr. $isd's timings: $timings");
     break;
   } else {
     print("Doctor is not available");
   }
   break;
 }


  //Neurologists
  case"4":
      Map<String, String> Neurologists = {
     "garcia"	:"Monday 9am-10am",
    "davis"	:"Tuesday 9am-11am"
    };
    print("Available doctors:");
 Neurologists.forEach((doctor, timings) => print("- $doctor"));
 while (true) {
   stdout.write("Enter the name of the doctor to view their timings or quit: ");
   final isd = stdin.readLineSync()!.toLowerCase();
   if (isd == 'quit') {
      stdout.writeln("Exiting program....");
        stdout.writeln("Thanks for visiting the program.");
     break;
   }
   if (Neurologists.containsKey(isd)) {
     final timings =Neurologists[isd];
     print("Dr. $isd's timings: $timings");
     break;
   } else {
     print("Doctor is not available");
   }
   break;
 }


 //Psychiatrists
  case"5":
      Map<String, String> Psychiatrists = {
     "clark"	:"Saturday 9am-11am",
     "james":	"Thursday 7pm-9pm"
    };
    print("Available doctors:");
 Psychiatrists.forEach((doctor, timings) => print("- $doctor"));
 while (true) {
   stdout.write("Enter the name of the doctor to view their timings or quit: ");
   final isd = stdin.readLineSync()!.toLowerCase();
   if (isd == 'quit') {
      stdout.write("Thanks for visiting");
     break;
   }
   if (Psychiatrists.containsKey(isd)) {
     final timings =Psychiatrists[isd];
     print("Dr. $isd's timings: $timings");
     break;
   } else {
     print("Doctor is not available");
   }
   break;
 }

//Quit
 case"6":
   stdout.writeln("Exiting program....");
        stdout.writeln("Thanks for visiting the program.");
        return;
      default:
        break;
    }
     break;
  }
  break;


  //For knowing doctor's Fees
  case"3":
   while (true) {
  stdout.writeln("Which Specialization you want to know the fees?");
    stdout.writeln("1. Internal Medicine:");
    stdout.writeln("2. Cardiologists:");
    stdout.writeln("3. Dermatologists:");
    stdout.writeln("4. Neurologists:");
    stdout.writeln("5. Psychiatrists:");
     stdout.writeln("6. Quit:");


    String choice = stdin.readLineSync()!.trim();

    switch (choice) {


      //InternalMedicine
  case"1":
    Map<String, int> doctorFees = {
    "smith": 150,
    "jones": 200,
  };
   Map<String, String> InternalMedicine = {
     "smith"	:"Tuesday 10am-11am",
     "jones" :	"Monday 3pm-2pm"
    };
    stdout.writeln("Doctors: ");
     stdout.writeln("- smith ");
     stdout.writeln("- jones ");
  stdout.writeln("Enter doctor's name or quit:");
  String input = stdin.readLineSync()!.trim();
  if (input.toLowerCase() == 'fees') {
    stdout.writeln("Doctor fees:");
    doctorFees.forEach((doctor, fee) => stdout.writeln("Dr. $doctor: \$${fee}"));
  } else {
    String? appointmentTime = InternalMedicine[input];
    if (appointmentTime != null) {
      int? fee = doctorFees[input];
       if(input=='quit'){
        stdout.writeln("Exiting program....");
        stdout.writeln("Thanks for visiting the program");
      }
      if (fee != null) {
        stdout.writeln("Dr. $input's fee is \$${fee}.");
      }
    } else {
      stdout.writeln("No Dr. $input found.");
      break;
    }
    break;
  }


  //Cardiologists
  case"2":
    Map<String, int> doctorFees = {
    "adams": 120,
    "brown": 60,
  };
   Map<String, String> Cardiologists = {
    "adams"	:"Wednesday 10am-2pm",
     "brown"	:"Thursday 10am-1pm"
    };
     stdout.writeln("Doctors: ");
     stdout.writeln("-adams");
      stdout.writeln("-brown ");
  stdout.writeln("Enter doctor's name or quit:");
  String input = stdin.readLineSync()!.trim();
  if (input.toLowerCase() == 'fees') {
    stdout.writeln("Doctor fees:");
    doctorFees.forEach((doctor, fee) => stdout.writeln("Dr. $doctor: \$${fee}"));
  } else {
    String? appointmentTime = Cardiologists[input];
    if (appointmentTime != null) {
      int? fee = doctorFees[input];
       if(input=='quit'){
        stdout.writeln("Exiting program....");
        stdout.writeln("Thanks for visiting the program");
      }
      if (fee != null) {
        stdout.writeln("Dr. $input's fee is \$${fee}.");
      }
    } else {
      stdout.writeln("No Dr. $input found.");
      break;
    }
  }


//Dermatologists
    case"3":
    Map<String, int> doctorFees = {
    "williams": 90,
    "miller": 130,
  };
   Map<String, String> Dermatologists = {
   "williams"	:"Thursday 2pm-5pm",
      "miller"	:"Friday 3pm-4pm"
    };
     stdout.writeln("Doctors: ");
     stdout.writeln("-williams");
      stdout.writeln("miller ");
  stdout.writeln("Enter doctor's name or quit:");
  String input = stdin.readLineSync()!.trim();
  if (input.toLowerCase() == 'fees') {
    stdout.writeln("Doctor fees:");
    doctorFees.forEach((doctor, fee) => stdout.writeln("Dr. $doctor: \$${fee}"));
  } else {
    String? appointmentTime = Dermatologists[input];
    if (appointmentTime != null) {
      int? fee = doctorFees[input];
      if(input=='quit'){
        stdout.writeln("Exiting program....");
        stdout.writeln("Thanks for visiting the program");
      }
      if (fee != null) {
        stdout.writeln("Dr. $input's fee is \$${fee}.");
      }
    } else {
      stdout.writeln("No Dr. $input found.");
      break;
    }
  }


  //Neurologists
    case"4":
    Map<String, int> doctorFees = {
    "garcia": 190,
    "davis": 210,
  };
   Map<String, String> Neurologists = {
   "garcia"	:"Monday 9am-10am",
    "davis"	:"Tuesday 9am-11am"
    };
     stdout.writeln("Doctors: ");
     stdout.writeln("-garcia");
      stdout.writeln("-davis ");
  stdout.writeln("Enter doctor's name or quit:");
  String input = stdin.readLineSync()!.trim();
  if (input.toLowerCase() == 'fees') {
    stdout.writeln("Doctor fees:");
    doctorFees.forEach((doctor, fee) => stdout.writeln("Dr. $doctor: \$${fee}"));
  } else {
    String? appointmentTime = Neurologists[input];
    if (appointmentTime != null) {
      int? fee = doctorFees[input];
      if(input=='quit'){
        stdout.writeln("Exiting program....");
        stdout.writeln("Thanks for visiting the program");
      }
      if (fee != null) {
        stdout.writeln("Dr. $input's fee is \$${fee}.");
      }
    } else {
      stdout.writeln("No Dr. $input found.");
      break;
    }
  }



  //Psychiatrists
    case"5":
    Map<String, int> doctorFees = {
    "clark": 120,
    "james": 80,
  };
   Map<String, String> Psychiatrists = {
   "clark"	:"Saturday 9am-11am",
     "james":	"Thursday 7pm-9pm"
    };
     stdout.writeln("Doctors: ");
     stdout.writeln("-clark");
      stdout.writeln("-james ");
  stdout.writeln("Enter doctor's name or quit:");
  String input = stdin.readLineSync()!.trim();
  if (input.toLowerCase() == 'fees') {
    stdout.writeln("Doctor fees:");
    doctorFees.forEach((doctor, fee) => stdout.writeln("Dr. $doctor: \$${fee}"));
  } else {
    String? appointmentTime = Psychiatrists[input];
    if (appointmentTime != null) {
      int? fee = doctorFees[input];
      if(input=='quit'){
        stdout.writeln("Exiting program....");
        stdout.writeln("Thanks for visiting the program");
      }
      if (fee != null) {
        stdout.writeln("Dr. $input's fee is \$${fee}.");
      }
    } else {
      stdout.writeln("No Dr. $input found.");
      break;
    }
  }

//Quit
   case "6":
        stdout.writeln("Exiting program....");
        stdout.writeln("Thanks for visiting the program.");
        return;
      default:
        break;
    }
    break;
   }
break;
    


  //Quit
    case "5":
        stdout.writeln("Exiting program....");
        stdout.writeln("Thanks for visiting the program.");
        return;
      default:
        break;
}
break;

  }
}