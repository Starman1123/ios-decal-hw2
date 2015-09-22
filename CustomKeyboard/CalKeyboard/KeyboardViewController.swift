//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var buttonA: UIButton!
    @IBOutlet var buttonB: UIButton!
    @IBOutlet var buttonC: UIButton!
    @IBOutlet var buttonD: UIButton!
    @IBOutlet var buttonE: UIButton!
    @IBOutlet var buttonF: UIButton!
    @IBOutlet var buttonG: UIButton!
    @IBOutlet var buttonH: UIButton!
    @IBOutlet var buttonI: UIButton!
    @IBOutlet var buttonJ: UIButton!
    @IBOutlet var buttonK: UIButton!
    @IBOutlet var buttonL: UIButton!
    @IBOutlet var buttonM: UIButton!
    @IBOutlet var buttonN: UIButton!
    @IBOutlet var buttonO: UIButton!
    @IBOutlet var buttonP: UIButton!
    @IBOutlet var buttonQ: UIButton!
    @IBOutlet var buttonR: UIButton!
    @IBOutlet var buttonS: UIButton!
    @IBOutlet var buttonT: UIButton!
    @IBOutlet var buttonU: UIButton!
    @IBOutlet var buttonV: UIButton!
    @IBOutlet var buttonW: UIButton!
    @IBOutlet var buttonX: UIButton!
    @IBOutlet var buttonY: UIButton!
    @IBOutlet var buttonZ: UIButton!
    @IBOutlet var buttonDelete: UIButton!
    @IBOutlet var buttonReturn: UIButton!
    
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        
        buttonA.tag = 0
        buttonB.tag = 1
        buttonC.tag = 2
        buttonD.tag = 3
        buttonE.tag = 4
        buttonF.tag = 5
        buttonG.tag = 6
        buttonH.tag = 7
        buttonI.tag = 8
        buttonJ.tag = 9
        buttonK.tag = 10
        buttonL.tag = 11
        buttonM.tag = 12
        buttonN.tag = 13
        buttonO.tag = 14
        buttonP.tag = 15
        buttonQ.tag = 16
        buttonR.tag = 17
        buttonS.tag = 18
        buttonT.tag = 19
        buttonU.tag = 20
        buttonV.tag = 21
        buttonW.tag = 22
        buttonX.tag = 23
        buttonY.tag = 24
        buttonZ.tag = 25
        buttonDelete.tag = 26
        buttonReturn.tag = 27
        
        for view in self.keyboardView.subviews as! [UIButton]
        {
            view.addTarget(self, action: "buttonPressed:", forControlEvents: .TouchUpInside)
        }
    }

    func buttonPressed(sender: UIButton)
    {
        var toInsert = ""
        let proxy = self.textDocumentProxy as UIKeyInput
        switch (sender.tag)
        {
            case 0: toInsert = "A"
            case 1: toInsert = "B"
            case 2: toInsert = "C"
            case 3: toInsert = "D"
            case 4: toInsert = "E"
            case 5: toInsert = "F"
            case 6: toInsert = "G"
            case 7: toInsert = "H"
            case 8: toInsert = "I"
            case 9: toInsert = "J"
            case 10: toInsert = "K"
            case 11: toInsert = "L"
            case 12: toInsert = "M"
            case 13: toInsert = "N"
            case 14: toInsert = "O"
            case 15: toInsert = "P"
            case 16: toInsert = "Q"
            case 17: toInsert = "R"
            case 18: toInsert = "S"
            case 19: toInsert = "T"
            case 20: toInsert = "U"
            case 21: toInsert = "V"
            case 22: toInsert = "W"
            case 23: toInsert = "X"
            case 24: toInsert = "Y"
            case 25: toInsert = "Z"
            case 26: proxy.deleteBackward()
            case 27: dismissKeyboard()
            default: toInsert = ""
            
        }
        proxy.insertText(toInsert)
    }

}
