//
//  ResultController.swift
//  roshambo
//
//  Created by Himakiran Kumar on 08/11/20.
//


import UIKit

class ResultController: UIViewController {
    
    var user_chosen_value:Int? ;
    var comp_chosen_value:Int? ;
    @IBOutlet var resultImageView:UIImageView?;
    @IBOutlet var resultLabel:UILabel?;

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
               
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
            
        let user_chosen_value = self.user_chosen_value
        let comp_chosen_value = self.comp_chosen_value
        print("User chosen value : "+"\(user_chosen_value ?? -1)")
        print("Computer chosen value : "+"\(comp_chosen_value ?? -1)")
        let resultLabel = self.resultLabel
        let resultImageView = self.resultImageView
    
        if (user_chosen_value == comp_chosen_value){
            resultLabel?.text = "Its a tie !!"
            resultImageView?.image = UIImage(named: "itsATie.png")
        }
        else{
            if ((user_chosen_value == 1) && (comp_chosen_value == 3)){
                resultLabel?.text = "You Win !!"
                resultImageView?.image = UIImage(named: "RockCrushesScissors.jpeg")
            }
            if ((user_chosen_value == 1) && (comp_chosen_value == 2)){
                resultLabel?.text = "You Lose !!"
                resultImageView?.image = UIImage(named: "PaperCoversRock.jpg")
            }
            if ((user_chosen_value == 2) && (comp_chosen_value == 1)){
                resultLabel?.text = "You Win !!"
                resultImageView?.image = UIImage(named: "PaperCoversRock.jpg")
            }
            if ((user_chosen_value == 2) && (comp_chosen_value == 3)){
                resultLabel?.text = "You Lose !!"
                resultImageView?.image = UIImage(named: "ScissorsCutPaper.jpg")
            }
            if ((user_chosen_value == 3) && (comp_chosen_value == 1)){
                resultLabel?.text = "You Lose !!"
                resultImageView?.image = UIImage(named: "RockCrushesScissors.jpeg")
            }
            if ((user_chosen_value == 3) && (comp_chosen_value == 2)){
                resultLabel?.text = "You Win !!"
                resultImageView?.image = UIImage(named: "ScissorsCutPaper.jpg")
            }
            
            
        }
        }
    
    
    @IBAction func goBack() {
        let controller:ViewController
        controller = storyboard?.instantiateViewController(identifier: "ViewController") as! ViewController
        
        present(controller, animated: true, completion: nil)
    }
    
    
    


}
