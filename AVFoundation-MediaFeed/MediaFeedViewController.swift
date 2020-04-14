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

extension MediaFeedViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mediaCell", for: indexPath)
        return cell
    }
    
    
}

extension MediaFeedViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let maxSize: CGSize = UIScreen.main.bounds.size // max width and height of the current device
        let itemWidth: CGFloat = maxSize.width
        let itemHeight: CGFloat = maxSize.height * 0.40 // 40% of the height of the device
        
        return CGSize(width: itemWidth, height: itemHeight)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtsection: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }
}
