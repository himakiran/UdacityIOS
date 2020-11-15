//
//  TextFieldZipDelegate.swift
//  TextChallengeApp
//
//  Created by Himakiran Kumar on 15/11/20.
//

import Foundation
import UIKit

class TextFieldZipDelegate: NSObject, UITextFieldDelegate {
    
    func textField(_ textField: UITextField,shouldChangeCharactersIn range: NSRange,replacementString string: String) -> Bool {
        
        if string.rangeOfCharacter(from: NSCharacterSet.decimalDigits.inverted) == nil{
              let len = (textField.text?.count)! + string.count
              if len <= 5 {
                  return true
              }
              else {
                return false
              }
       }
        return false
    }
          
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        let len = textField.text?.count
        if len != 5 {
            textField.attributedText=NSAttributedString(string: "Invalid Zip Code")
            return false
        }
        else {
          return true
        }
    }
}
