ButtonOpenClose                 buttonOpenCloseTestObject;

void setup                      (){

    size                        (320, 240, P2D);
    smooth                      (0);
    buttonOpenCloseTestObject   = new ButtonOpenClose(30);

}

void draw                           (){

    background                      (0);
    buttonOpenCloseTestObject       .DrawVoid((width/2), (height/2));

    if      (buttonOpenCloseTestObject.isFunctionTriggerBoolean == true && buttonOpenCloseTestObject.isButtonOpenBoolean == true) { TestButtonOpenVoid();  }
    else if (buttonOpenCloseTestObject.isFunctionTriggerBoolean == true && buttonOpenCloseTestObject.isButtonOpenBoolean == false){ TestButtonCloseVoid(); }

}

void mousePressed               (){

    if(buttonOpenCloseTestObject.MouseOverBoolean() == true){ buttonOpenCloseTestObject.isAnimating = true; }

}

void TestButtonOpenVoid (){ println("OPEN");  }
void TestButtonCloseVoid(){ println("CLOSE"); }



