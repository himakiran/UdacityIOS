//
//  ViewController.swift
//  TextChallengeApp
//
//  Created by Himakiran Kumar on 15/11/20.
//

import UIKit



class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var TextFieldZip:UITextField!
    @IBOutlet weak var TextFieldCurrency:UITextField!
    @IBOutlet weak var TextFieldCheck:UITextField!
    
    @IBOutlet weak var onOffSwitch:UISwitch!
    
    let textFieldZipDelegate = TextFieldZipDelegate()
    let textFieldCurrencyDelegate = TextFieldCurrencyDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.TextFieldCheck.delegate = self
        self.TextFieldZip.delegate = textFieldZipDelegate
        self.TextFieldCurrency.delegate = textFieldCurrencyDelegate
    }

    func textFieldShouldBeginEditing (_ textField: UITextField) -> Bool{
        
        if(onOffSwitch.isOn){
            textField.text="Switch is On! You can edit!!"
            return true
        }
        else{
            textField.text="Switch is Off! You can't edit!!"
            return false
        }
        }

}

