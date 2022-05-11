

import UIKit

class UICollectionGallery: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let cell = [ModelCollection]()
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: GalleryCollectionViewCell.reuseId, for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
    
    init() {
        let layout = UICollectionViewLayout()
        layout.accessibilityScroll(.down)
        super.init(frame: .zero, collectionViewLayout: layout)
        backgroundColor = .green
        delegate = self
        dataSource = self
        register(GalleryCollectionViewCell.self, forCellWithReuseIdentifier: GalleryCollectionViewCell.reuseId)
    }
    
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
