//
//  ViewController.swift
//  roshambo
//
//  Created by Himakiran Kumar on 07/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    var chosen_value:Int? , computer_chosen_value:Int? ;
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }
// Generate user chosen values depending on button pressed

// Instantiate resultcontroller using code only for rock
    @IBAction  func rockPressed()  {
        chosen_value = 1
        let controller:ResultController
        controller = storyboard?.instantiateViewController(identifier: "ResultController") as! ResultController
        controller.user_chosen_value = chosen_value
        controller.comp_chosen_value = randomDiceValue()
        present(controller, animated: true, completion: nil)
    }
// Instantiate resultcontroller using code and segue for paper
    @IBAction  func paperPressed()  {
        chosen_value = 2
        let controller:ResultController
        controller = storyboard?.instantiateViewController(identifier: "ResultController") as! ResultController
        controller.user_chosen_value = chosen_value
        controller.comp_chosen_value = randomDiceValue()
        self.performSegue(withIdentifier: "resultSegue", sender: self)
        
    }
// Instantiate resultcontroller using segue only for paper
    @IBAction  func scissorsPressed()  {
        chosen_value = 3
        performSegue(withIdentifier: "resultSegue", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           
           if segue.identifier == "resultSegue" {
               
               let controller = segue.destination as! ResultController
               
               controller.user_chosen_value = 3
               controller.comp_chosen_value = self.randomDiceValue()
           }
       }
    // MARK: Generate Random value for Computer choice of Rock Paper Scissors
        
        /**
        * Randomly generates a Int from 1 to 3
        */
        func randomDiceValue() -> Int {
            // Generate a random Int32 using arc4Random
            let randomValue = 1 + arc4random() % 3
            
            // Return a more convenient Int, initialized with the random value
            return Int(randomValue)
        }


}

