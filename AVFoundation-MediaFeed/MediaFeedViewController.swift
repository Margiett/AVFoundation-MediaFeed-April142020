//
//  ViewController.swift
//  AVFoundation-MediaFeed
//
//  Created by Margiett Gil on 4/14/20.
//  Copyright © 2020 Margiett Gil. All rights reserved.
//

import UIKit

class MediaFeedViewController: UIViewController {
    @IBOutlet weak var videoButton: UIBarButtonItem!
    @IBOutlet weak var photoButton: UIBarButtonItem!
    @IBOutlet weak var collectionView: UICollectionView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
    }
    
    private func configureCollectionView(){
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    @IBAction func videoButtonPressed(_ sender: UIBarButtonItem) {
        
    }
    @IBAction func photoLibraryButtonPressed(_ sender: UIBarButtonItem) {
        
    }

}
//MARK: UICollectionView DataSource methods
extension MediaFeedViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mediaCell", for: indexPath)
        return cell
    }
    // this is saying give me back a view
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "headerView", for: indexPath) as? HeaderView else {
            
            fatalError("could not dequeue a HeaderView")
           
        }
     
        return headerView
    }
    
    
}
//MARK: UICollectionView Delegate methods
extension MediaFeedViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let maxSize: CGSize = UIScreen.main.bounds.size // max width and height of the current device
        let itemWidth: CGFloat = maxSize.width
        let itemHeight: CGFloat = maxSize.height * 0.40 // 40% of the height of the device
        
        return CGSize(width: itemWidth, height: itemHeight)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }
    
    // size for header
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
    
        return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height * 0.40)
    }
    
    
    
}
