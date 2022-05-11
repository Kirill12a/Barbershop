import UIKit

class GalleryViewController: UIViewController {

    private var galleryCollectionView = GalleryView()
    
    override func loadView() {
        super.loadView()
        self.view = GalleryView()
       
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(galleryCollectionView)
        galleryCollectionView.collectionView.dataSource = self
        galleryCollectionView.collectionView.delegate = self
        
    }
}

extension GalleryViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = 
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top:5, left: 16, bottom: 10, right: 16)
    }}




    
