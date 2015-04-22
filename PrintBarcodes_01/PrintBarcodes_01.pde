//BAMBAMBAM
//A workshop at AMAZE FEstival Berlin 2015
//ZHdK, Interaction Design & Game Design
//iad.zhdk.ch, gamedesign.zhdk.ch
//Twitter: @BAMBAMBAMAZE
//Beispiel: Print Barcodes

import diewald_bardcode.*;
import diewald_bardcode.CONSTANTS.*;

int code_size = 130; //Size 130 is suitable for the address stickers with 29x62mm
String content = "AMAZE";
int index = 0;

void setup() 
{
  size(code_size, code_size/2);
  noLoop();
  
  //Encode the String
  EncodingResult result = Barcode.encode(content, ENCODE.CODE_128, code_size, code_size/2, CHARACTER_SET.DEFAULT, ERROR_CORRECTION.DEFAULT);
  if(result.encodingFailed()){
    println( result.getEncodingException() );
  } else {
    result.setBgColor(255, 255, 255, 255);
    result.setCodeColor(0, 0, 100, 255);
  
    //Save the resulted image
    PImage barcode = result.asImage(this);
    if ( barcode != null)
      image(barcode, 0, 0);
      
    barcode.save(dataPath("")+"/barcode_"+index+".jpg");
  }
  
  //Print the image  
  printImage("barcode_"+index+".jpg");
}
 
void draw() 
{
     
}

