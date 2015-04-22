//BAMBAMBAM
//A workshop at AMAZE FEstival Berlin 2015
//ZHdK, Interaction Design & Game Design
//iad.zhdk.ch, gamedesign.zhdk.ch
//Twitter: @BAMBAMBAMAZE
//Beispiel: Read Barcodes

String input = "";

void setup()
{
  size(500, 500);
}

void draw()
{
}

void action(String _input)
{
  if (_input.equals("2￿M15065623"))
  {
    //Do something
    background(random(255));
  }
  
  if(_input.equals("￿MK5145ß31￿A38ß￿EU"))
  {
    println("Hallo Clemi");
  }
}

void keyPressed()
{
  if (key != '\n')
  {
    input += key;
  } else
  {
    println(input);
    action(input);
    input = "";
  }
}

