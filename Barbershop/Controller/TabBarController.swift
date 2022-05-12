//
//  TabBarController.swift
//  Barbershop
//
//  Created by Kirill Drozdov on 09.05.2022.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewWillAppear(_ animated: Bool) {
       super.viewWillAppear(animated)

       AppUtility.lockOrientation(.portrait)
       // Or to rotate and lock
       // AppUtility.lockOrientation(.portrait, andRotateTo: .portrait)

   }

   override func viewWillDisappear(_ animated: Bool) {
       super.viewWillDisappear(animated)

       // Don't forget to reset when view is being removed
       AppUtility.lockOrientation(.all)
   }

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.tintColor = .white
        tabBar.unselectedItemTintColor = .gray
        tabBar.backgroundColor = .black

        tabBarController()
        self.selectedIndex = 1

    }

    func tabBarController() {
        let aboutVC = UINavigationController.init(rootViewController: NoutsViewContoller())
        aboutVC.tabBarItem.image = UIImage(systemName: "person")
        aboutVC.tabBarItem.title = "О нас"
        let noutsVS = UINavigationController.init(rootViewController: AboutvViewController())
        noutsVS.tabBarItem.image = UIImage(systemName: "pencil")
        noutsVS.tabBarItem.title = "Записаться"

        let galleryVS = UINavigationController.init(rootViewController: GalleryViewController())
        galleryVS.tabBarItem.image = UIImage(systemName: "camera")
        galleryVS.tabBarItem.title = "Фото"


        viewControllers = [aboutVC, noutsVS, galleryVS]

    }
}
