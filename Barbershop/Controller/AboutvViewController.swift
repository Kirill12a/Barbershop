//
//  AboutvViewController.swift
//  Barbershop
//
//  Created by Kirill Drozdov on 09.05.2022.
//

import UIKit
import SnapKit

class AboutvViewController: UIViewController { // о нас



    var isHidden = true

    private var sourceView = AboutvView()
    override func loadView() {
        super.loadView()
 
        self.view = sourceView


    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        isHidden.toggle()

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white





    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        UserDefaults.standard.set(isHidden, forKey: "openData")

        let data = UserDefaults.standard.bool(forKey: "openData")
        print("Экран \(data)")
    }
}

