ButtonOpenClose                 buttonOpenCloseTestObject;

void setup                      (){

    size                        (320, 240, P2D);
    smooth                      (0);

    /*Initiate button open and close.*/
    buttonOpenCloseTestObject   = new ButtonOpenClose(30);

}

void draw                           (){

    background                      (0);

    /*Update open and close button.*/
    buttonOpenCloseTestObject       .DrawVoid((width/2), (height/2));

    /*Button example of adding function callback.*/
    if      (buttonOpenCloseTestObject.isFunctionTriggerBoolean == true && buttonOpenCloseTestObject.isButtonOpenBoolean == true) { TestButtonCloseVoid(); }
    else if (buttonOpenCloseTestObject.isFunctionTriggerBoolean == true && buttonOpenCloseTestObject.isButtonOpenBoolean == false){ TestButtonOpenVoid();  }

}

void mousePressed               (){

	/*Button example of mouse click.*/
    if(buttonOpenCloseTestObject.MouseOverBoolean() == true){ buttonOpenCloseTestObject.isAnimating = true; }

}

void TestButtonOpenVoid (){ println("OPEN");  }
void TestButtonCloseVoid(){ println("CLOSE"); }



