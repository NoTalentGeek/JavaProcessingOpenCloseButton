import static processing.core.PConstants.*;
import        processing.core.PApplet;
import        processing.core.PShape;

public class ButtonOpenClose{

    final   PApplet     pAppletObject;

    int     buttonSizeInt               = -1;
    int     buttonXInt                  = -1;
    int     buttonYInt                  = -1;
    PShape  buttonOpenCloseObject       = null;
    PShape  buttonOpenCloseCircleObject = null;
    PShape  buttonOpenCloseCross1Object = null;
    PShape  buttonOpenCloseCross2Object = null;

    ButtonOpenClose                     (PApplet _pAppletObject, int _buttonSizeInt){

        pAppletObject                   = _pAppletObject;

        buttonSizeInt                   = _buttonSizeInt;
        buttonXInt                      = 0                 - (buttonSizeInt/2);
        buttonYInt                      = 0                 - (buttonSizeInt/2);

        pAppletObject.shapeMode         (CENTER);

        buttonOpenCloseObject           = pAppletObject.createShape(GROUP);
        buttonOpenCloseCircleObject     = pAppletObject.createShape(

            ELLIPSE, 
            buttonXInt, 
            buttonYInt, 
            buttonSizeInt, 
            buttonSizeInt

        );
        buttonOpenCloseCross1Object     = pAppletObject.createShape(

            LINE, 
            (buttonXInt + (buttonSizeInt/4)), 
            (buttonYInt + (buttonSizeInt/4)), 
            (buttonXInt + (buttonSizeInt/4)) + (buttonSizeInt/2), 
            (buttonYInt + (buttonSizeInt/4)) + (buttonSizeInt/2)
             
        );
        buttonOpenCloseCross2Object     = pAppletObject.createShape(

            LINE, 
            (buttonXInt + (buttonSizeInt/4)), 
            (buttonYInt + (buttonSizeInt/4)) + (buttonSizeInt/2), 
            (buttonXInt + (buttonSizeInt/4)) + (buttonSizeInt/2), 
            (buttonYInt + (buttonSizeInt/4))

        );

        buttonOpenCloseObject.addChild   (buttonOpenCloseCircleObject);
        buttonOpenCloseObject.addChild   (buttonOpenCloseCross1Object);
        buttonOpenCloseObject.addChild   (buttonOpenCloseCross2Object);

    }

    void DrawVoid                       (int _buttonXInt, int _buttonYInt){

        buttonXInt                      = _buttonXInt + (buttonSizeInt/2);
        buttonYInt                      = _buttonYInt + (buttonSizeInt/2);
        pAppletObject.shape             (buttonOpenCloseObject, buttonXInt, buttonYInt);

        /*TESTING*/
        buttonOpenCloseObject           .rotate(0.1f);

    }

};



