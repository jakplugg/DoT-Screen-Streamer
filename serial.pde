void updateSerial() {
  if (serial_port.available() > 1100) {
    throwstring = serial_port.readStringUntil(123);//read until "{" and throw out
    //serial_port.readBytesUntil(125, byteBuffer); 
    myString = serial_port.readStringUntil(125); // 
    if (myString != null) {      
      String[] serialInArray = split(trim(myString), ",");
      //println(throwstring);//this seems to work fine, the string contains the unwanted stuff up to and including "{"
       println(serialInArray.length);//looks good, without "length" shows hex values without commas.     
        for (int i = 0; i<byteBuffer.length; i++) {
           byteBuffer[i] = byte(int(serialInArray[i]));//you can insert "i" or some other random number here and the screen updates 
        }     
    }
  }
}
