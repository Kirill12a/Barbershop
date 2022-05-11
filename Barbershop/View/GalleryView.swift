
import UIKit

class GalleryView: UIView {
    
    lazy  var collectionView: UICollectionView = {
            let viewLayout = UICollectionViewFlowLayout()
            let collectionView = UICollectionView(frame: .zero, collectionViewLayout: viewLayout)
            collectionView.register(GalleryCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
            collectionView.showsVerticalScrollIndicator = false
            collectionView.backgroundColor = .white
            return collectionView
        }()
   

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .orange
        constraintCell()
    }
    
    
    func constraintCell() {
        self.addSubview(collectionView)
                collectionView.snp.makeConstraints { make in
                    make.trailing.leading.top.bottom.equalToSuperview()
                }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
