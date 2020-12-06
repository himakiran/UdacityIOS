//
//  TableViewController.swift
//  MeMeV2
//
//  Created by Himakiran Kumar on 05/12/20.
//

import UIKit

// MARK: - ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: Properties
    var selectedRowID: Int!
    
    var memes: [Meme]! {
         let object = UIApplication.shared.delegate
         let appDelegate = object as! AppDelegate
         return appDelegate.memes
     }
    
    @IBOutlet weak var tablView: UITableView!
    
    // MARK: Edit Function
    @IBAction func editMeme(_ sender: Any){
        
        let meme = self.memes[selectedRowID]
        let storyboard = UIStoryboard (name: "Main", bundle: nil)
        let  vc = storyboard.instantiateViewController(withIdentifier: "MemeEditorViewController") as! MemeEditorViewController
        vc.bottomText = meme.bottomText as String
        vc.topText = meme.topText as String
        vc.OrigImage = meme.originalImage
        let nc = navigationController
        nc?.pushViewController(vc, animated: true)
    }

  
    
        
    // MARK: Table View Data Source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.memes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "memeCell")!
        let meme = self.memes[(indexPath as NSIndexPath).row]
        
        // Set the name and image
        cell.textLabel?.text = "\(meme.topText)...\(meme.bottomText)"
        cell.imageView?.image = meme.memedImage
        
        
        
        return cell
    }
    
    // MARK: Show detail view of selected cell
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
            self.selectedRowID = (indexPath as NSIndexPath).row
            let meme = self.memes[(indexPath as NSIndexPath).row]
            let storyboard = UIStoryboard (name: "Main", bundle: nil)
            let  vc = storyboard.instantiateViewController(withIdentifier: "memeDetailViewController") as! MemeDetailViewController
            vc.showImage = meme.memedImage
            let nc = navigationController
            nc?.pushViewController(vc, animated: true)
        }
    override func viewWillAppear(_ animated: Bool) {
        tablView.reloadData()
    }
    
    
  
    
   
    
    
}

