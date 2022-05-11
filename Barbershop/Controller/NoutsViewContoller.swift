//
//  NoutsViewContoller.swift
//  Barbershop
//
//  Created by Kirill Drozdov on 09.05.2022.
//

import UIKit
import SnapKit
import MapKit

class NoutsViewContoller: UIViewController {

    // записаться

    static var singtone = NoutsViewContoller()

  static  let screnSize = UIScreen.main.bounds



    fileprivate lazy var viewSource = NoutsView()


    var dataService: [ServicesModel] = [ServicesModel(image: "second", titile: "Бритье головы опасной бритвой", price: "1600"),
                                        ServicesModel(image: "first", titile: "Cтрижка головы опасной бритвой", price: "1000")
    ]


    override func loadView() {
        super.loadView()
        self.view = viewSource
        print(NoutsViewContoller.screnSize.height)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.titleView = viewSource.segmentedController
        viewSource.segmentedController.selectedSegmentIndex = 1

        // сюда collection

        viewSource.collectionView.delegate        = self
        viewSource.collectionView.dataSource      = self


        // Navigation Bar:
        navigationController?.navigationBar.barTintColor = UIColor.white

        // ext:
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.orange]

        // Tab Bar:
        tabBarController?.tabBar.barTintColor = UIColor.black

        // Tab Bar Text:
        tabBarController?.tabBar.tintColor = UIColor.yellow
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

    }




    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewSource.segmentedController.addTarget(self, action: #selector(segmentControl(_:)), for: .valueChanged)
    }

    @objc func segmentControl(_ segmentedControl: UISegmentedControl) {
        switch (segmentedControl.selectedSegmentIndex) {
        case 0:
            print("Hello")
            DispatchQueue.main.async { [self] in
                viewSource.servicesScreenView.isHidden = false
                viewSource.contactsScreenView.isHidden = true
            }
        case 1:
            print("Шо такое")
            DispatchQueue.main.async { [self] in
                viewSource.servicesScreenView.isHidden = true
                viewSource.contactsScreenView.isHidden = false
                
            }
        default:
            break
        }
    }
}



//MARK: - CollectionView
extension NoutsViewContoller: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath)-> CGSize{
        return CGSize(width: view.frame.width / 1.1,  height: view.frame.height / 2.2 )
    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        dataService.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CellServices
        cell.backgroundColor = UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1)
        cell.layer.cornerRadius = 10
        cell.imageCervices.image = UIImage(named: dataService[indexPath.row].image)
        cell.titleLabel.text = dataService[indexPath.row].titile
        cell.priceLabel.text = dataService[indexPath.row].price + " ₽"
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top:5, left: 16, bottom: 10, right: 16)
    }

//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        cellTouch()
//    }



}



