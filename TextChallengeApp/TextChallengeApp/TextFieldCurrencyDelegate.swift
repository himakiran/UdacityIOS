//
//  TextFieldCurrencyDelegate.swift
//  TextChallengeApp
//
//  Created by Himakiran Kumar on 15/11/20.
//

import Foundation
import UIKit

class TextFieldCurrencyDelegate: NSObject, UITextFieldDelegate {
    // the function textField below is called as each character is input by the user and the input text
    // is changed continually
    func textField(_ textField: UITextField,shouldChangeCharactersIn range: NSRange,replacementString string: String) -> Bool {
        
        let oldText = textField.text! as NSString
        var newText = oldText.replacingCharacters(in: range, with: string)
        let newTextString = String(newText)
        
        let digits = CharacterSet.decimalDigits
        var digitText = ""
        
        for c in (newTextString.unicodeScalars) {
                    if digits.contains(UnicodeScalar(c.value)!) {
                        digitText.append("\(c)")
                    }
                }
        // Format the new string
                if let numOfPennies = Int(digitText) {
                    newText = "$" + self.dollarStringFromInt(numOfPennies) + "." + self.centsStringFromInt(numOfPennies)
                } else {
                    newText = "$0.00"
                }
        textField.text = newText
        // the below return false enables the user input to go from right to left.
        return false
    }
    
    func dollarStringFromInt(_ value: Int) -> String {
            return String(value / 100)
        }
    
    func centsStringFromInt(_ value: Int) -> String {
            
            let cents = value % 100
            var centsString = String(cents)
            
            if cents < 10 {
                centsString = "0" + centsString
            }
            
            return centsString
        }
    func textFieldDidBeginEditing(_ textField: UITextField) {
            if textField.text!.isEmpty {
                textField.text = "$0.00"
            }
        }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           textField.resignFirstResponder()
           
           return true;
       }
}


