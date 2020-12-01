//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by Himakiran Kumar on 01/12/20.
//  Copyright © 2020 Gabrielle Miller-Messner. All rights reserved.
//

import Foundation
import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var match: RPSMatch!
    var history = [RPSMatch]()
    var result: String!
    var matchPlayed : String!
    
    @IBOutlet weak var okButton: UIButton!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.history.count
    }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "histCell")!
            let match = self.history[(indexPath as NSIndexPath).row]
            if((match.p1 == match.winner) && (match.p2 == match.winner)){
            result = "Tie."
            }
            else
            {
                if(match.p2 == match.winner){
                    result = "Loss."}
                else{
                    result = "Win!"}
            }
            // Set the name and image
            cell.textLabel?.text = result
            
            // If the cell has a detail label we shall put the match played
            if let detailTextLabel = cell.detailTextLabel {
                detailTextLabel.text = " \(match.p1.description) Vs \(match.p2.description) "
            }
            
            return cell
        }
    @IBAction func okPressed(){
        let storyboard = UIStoryboard (name: "Main", bundle: nil)
        let rpsVC = storyboard.instantiateViewController(withIdentifier: "RockPaperScissorsViewController") as! RockPaperScissorsViewController
            self.present(rpsVC, animated: true, completion: nil)
    }
}
