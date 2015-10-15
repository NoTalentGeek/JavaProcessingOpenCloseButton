/*A class for toggle open and close button.
This button will be used to open a panel made using
    P5 user interface.*/
public class ButtonOpenClose{

    boolean isAnimating                 = false;
    boolean isButtonOpenBoolean         = true;
    boolean isFunctionTriggerBoolean    = false;
    int     buttonRotationCounterInt    = 0;
    int     buttonSizeInt               = -1;   /*The size of this button.*/
    int     buttonXInt                  = -1;   /*The x position of this button.*/
    int     buttonYInt                  = -1;   /*The y position of this button.*/
    PShape  buttonOpenCloseObject       = null; /*The main shape for this button.*/
    PShape  buttonOpenCloseCircleObject = null; /*This is a child shape of this button, later will be combined together into main shape.*/
    PShape  buttonOpenCloseCross1Object = null; /*This is a child shape of this button, later will be combined together into main shape.*/
    PShape  buttonOpenCloseCross2Object = null; /*This is a child shape of this button, later will be combined together into main shape.*/

    /*This object constructor, the only argument is this button size.*/
    ButtonOpenClose                     (int _buttonSizeInt){

        buttonSizeInt                   = _buttonSizeInt;
        int originXInt                  = -(buttonSizeInt/2);       /*This button size is adjusted by substracting a half of button size.*/
        int originYInt                  = -(buttonSizeInt/2);       /*This button size is adjusted by substracting a half of button size.*/

        shapeMode                       (CENTER);                   /*Set this button origin point mode as center.*/

        buttonOpenCloseObject           = createShape(GROUP);       /*Create a shape type GROUP, which is an accumulation of other shapes.*/
        
        /*Create the sub shape components.
        The components are the main circle shape and two lines that formed a plus.*/
        buttonOpenCloseCircleObject     = createShape(

            ELLIPSE, 
            originXInt, 
            originYInt, 
            buttonSizeInt, 
            buttonSizeInt

        );
        buttonOpenCloseCross1Object     = createShape(

            LINE, 
            (originXInt + (buttonSizeInt/2)),
            (originYInt + (buttonSizeInt/4)),
            (originXInt + (buttonSizeInt/2)),
            (originYInt + (buttonSizeInt/4)) + (buttonSizeInt/2)
             
        );
        buttonOpenCloseCross2Object     = createShape(

            LINE, 
            (originXInt + (buttonSizeInt/4)),
            (originYInt + (buttonSizeInt/2)),
            (originXInt + (buttonSizeInt/4)) + (buttonSizeInt/2), 
            (originYInt + (buttonSizeInt/2))

        );

        /*Add the three components into the main shape.
        After this is done you can just the main shape as the whole shape,
            and you do not need to set the properties of each shapes one
            by one.*/
        buttonOpenCloseObject.addChild   (buttonOpenCloseCircleObject);
        buttonOpenCloseObject.addChild   (buttonOpenCloseCross1Object);
        buttonOpenCloseObject.addChild   (buttonOpenCloseCross2Object);

    }

    /*A function to draw the combined shape.*/
    void DrawVoid                               (int _buttonXInt, int _buttonYInt){

        if(isFunctionTriggerBoolean == true)    { isFunctionTriggerBoolean = false; }

        buttonXInt                              = _buttonXInt + (buttonSizeInt/2);
        buttonYInt                              = _buttonYInt + (buttonSizeInt/2);
        shape                                   (buttonOpenCloseObject, buttonXInt, buttonYInt);

        if(isAnimating == true)                 {

            if      (isButtonOpenBoolean        == true)  { buttonOpenCloseObject.rotate(radians(1));  }
            else if (isButtonOpenBoolean        == false) { buttonOpenCloseObject.rotate(-radians(1)); }

            buttonRotationCounterInt            ++;

            if(buttonRotationCounterInt         >= 45){

                buttonRotationCounterInt        =  0;
                if      (isButtonOpenBoolean    == true)  { isButtonOpenBoolean = false; }
                else if (isButtonOpenBoolean    == false) { isButtonOpenBoolean = true;  }
                isAnimating                     =  false;
                isFunctionTriggerBoolean        =  true;

            }

        }

    }

    boolean MouseOverBoolean            (){

        boolean hoverBoolean            = false;

        if(

            mouseX > (buttonXInt - (buttonSizeInt/2) - (buttonSizeInt/2)) &&
            mouseX < (buttonXInt - (buttonSizeInt/2) + (buttonSizeInt/2)) &&
            mouseY > (buttonYInt - (buttonSizeInt/2) - (buttonSizeInt/2)) &&
            mouseY < (buttonYInt - (buttonSizeInt/2) + (buttonSizeInt/2))

        ){ hoverBoolean                 = true; }

        return  hoverBoolean;

    } 

};






