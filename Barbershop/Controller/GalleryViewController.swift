//
//  GalleryViewController.swift
//  Barbershop
//
//  Created by Kirill Drozdov on 09.05.2022.
//

import Foundation
import UIKit

class GalleryViewController: UIViewController {
    
    fileprivate lazy var gallerySource = GalleryView()
    
    override func loadView() {
        super.loadView()
        self.view = gallerySource
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gallerySource.collectionView.delegate = self
        gallerySource.collectionView.dataSource = self


        navigationController?.navigationBar.barTintColor = UIColor.white

        // ext:
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]

        // Tab Bar:
        tabBarController?.tabBar.barTintColor = UIColor.black

        // Tab Bar Text:
        tabBarController?.tabBar.tintColor = UIColor.yellow
    }
}

extension GalleryViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath)-> CGSize{
        
        return CGSize(width: view.frame.width / 1.1,  height: view.frame.height / 2.2 )
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! GalleryCollectionViewCell

        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 2
        cell.backgroundColor = .gray

        cell.myImgaeView.image = UIImage(named: "barber")

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top:5, left: 16, bottom: 10, right: 16)
    }
    
}
