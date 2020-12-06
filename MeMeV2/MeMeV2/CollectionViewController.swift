//
//  CollectionViewController.swift
//  MeMeV2
//
//  Created by Himakiran Kumar on 05/12/20.
//

import Foundation
import UIKit



class CollectionViewController: UICollectionViewController {

    // MARK: Properties
    
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    // MARK: Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = false
        collectionView.reloadData()
    }
    
    // MARK: Collection View Data Source
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.memes.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        let meme = self.memes[(indexPath as NSIndexPath).row]
        
        // Set the name and image
        cell.NameLabel.text = "\(meme.topText)...\(meme.bottomText)"
        cell.ImageView?.image = meme.memedImage
        //cell.schemeLabel.text = "Scheme: \(villain.evilScheme)"
        
        return cell
    }
    
    // MARK: Collection View show selected meme
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath:IndexPath) {

        let meme = self.memes[(indexPath as NSIndexPath).row]
        let storyboard = UIStoryboard (name: "Main", bundle: nil)
        let  vc = storyboard.instantiateViewController(withIdentifier: "memeDetailViewController") as! MemeDetailViewController
        vc.showImage = meme.memedImage
        let nc = navigationController
        nc?.pushViewController(vc, animated: true)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.reloadData()
        let space:CGFloat = 3.0
        let dimension = (view.frame.size.width - (2 * space)) / 3.0

        flowLayout.minimumInteritemSpacing = space
        flowLayout.minimumLineSpacing = space
        flowLayout.itemSize = CGSize(width: dimension, height: dimension)
    }
    
  
}

