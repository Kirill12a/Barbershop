//
//  TabBarController.swift
//  Barbershop
//
//  Created by Kirill Drozdov on 09.05.2022.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.tintColor = .white
        tabBar.unselectedItemTintColor = .gray
        tabBar.backgroundColor = .black

        tabBarController()

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
