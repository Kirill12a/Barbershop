//
//  AboutvViewController.swift
//  Barbershop
//
//  Created by Kirill Drozdov on 09.05.2022.
//

import UIKit
import SnapKit

class AboutvViewController: UIViewController { // о нас

    var myImage = UIImageView()
    let barberView = UIImage(named: "view")

    var logoImage = UIImageView()
    let logo = UIImage(named: "barber")

    override func loadView() {
        super.loadView()
        self.view = AboutvView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }}

