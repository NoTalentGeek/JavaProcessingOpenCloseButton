ButtonOpenClose                 buttonOpenCloseTestObject;

void setup                      (){

    size                        (320, 240, P2D);
    buttonOpenCloseTestObject   = new ButtonOpenClose(30);

}

void draw                       (){

    background                  (0);
    buttonOpenCloseTestObject   .DrawVoid((width/2), (height/2));

}

