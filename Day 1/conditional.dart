void main() {
  int a = 10, b = 15;
  if (a > b) {
    print("a is greater");
  } else {
    print("b is greater");
  }

  String day = "monday";
  switch (day) {
    case "monday":
      {
        print("Starting day of the Week");
      }
      break;
    case "Sunday":
      {
        print("End of the week");
      }
      break;
    default:
      {
        print("Other Days");
      }
  }
  // bool iscollage = false;
  // String leave =iscollage? "Come to collage" : "Enjoy the leave";
  // print(leave) ;
}
