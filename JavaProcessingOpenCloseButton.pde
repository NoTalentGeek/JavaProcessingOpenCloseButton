/*Close and open button for Processing project.
This sketch was made in Processing 2.2.1.*/
PShape  buttonOpenCloseObject           = null;

void    setup(){

    /*For PShape only P2D renderer will work.*/
    size                                (320, 240, P2D);


    int     buttonSizeInt               = 30;
    int     buttonXInt                  = 0 - (buttonSizeInt/2);
    int     buttonYInt                  = 0 - (buttonSizeInt/2);

    /*Initialize the main PShape object.*/
            buttonOpenCloseObject       = createShape(GROUP);

    /*Create the components of main PShape object.*/
    PShape  buttonOpenCloseCircleObject = createShape(

        ELLIPSE, 
        buttonXInt, 
        buttonYInt, 
        buttonSizeInt, 
        buttonSizeInt

    );
    PShape  buttonOpenCloseCross1Object = createShape(

        LINE, 
        (buttonXInt + (buttonSizeInt/4)), 
        (buttonYInt + (buttonSizeInt/4)), 
        (buttonXInt + (buttonSizeInt/4)) + (buttonSizeInt/2), 
        (buttonYInt + (buttonSizeInt/4)) + (buttonSizeInt/2)
         
    );
    PShape  buttonOpenCloseCross2Object = createShape(

        LINE, 
        (buttonXInt + (buttonSizeInt/4)), 
        (buttonYInt + (buttonSizeInt/4)) + (buttonSizeInt/2), 
        (buttonXInt + (buttonSizeInt/4)) + (buttonSizeInt/2), 
        (buttonYInt + (buttonSizeInt/4))

    );

    /*Attach the components into the main PShape object.*/
    buttonOpenCloseObject.addChild   (buttonOpenCloseCircleObject);
    buttonOpenCloseObject.addChild   (buttonOpenCloseCross1Object);
    buttonOpenCloseObject.addChild   (buttonOpenCloseCross2Object);


}
void draw(){

    background                  (240);

    /*Set the shape mode to CENTER because we want this object to rotate
        around the center.*/
    shapeMode                   (CENTER);
    /*Draw the shape.*/
    shape                       (buttonOpenCloseObject, width/2 + 15, height/2 + 15);
    /*Prototype rotation.*/
    buttonOpenCloseObject       .rotate(0.1);

}
