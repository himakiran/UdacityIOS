//
//  RandomColorTextFieldDelegate.swift
//  TextFields
//
//  Created by Himakiran Kumar on 15/11/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import Foundation
import UIKit

class RandomColorTextFieldDelegate: NSObject, UITextFieldDelegate {
    func randomColor()->UIColor{
        let colors:[UIColor] = [.red, .orange, .yellow, .green, .blue, .purple, .brown]
        let randomIndex = Int(arc4random() % UInt32(colors.count))
        return colors[randomIndex]
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.textColor = randomColor()
    }
}
