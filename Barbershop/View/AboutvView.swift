//
//  AboutvView.swift
//  Barbershop
//
//  Created by Kirill Drozdov on 09.05.2022.
//

import UIKit
import SnapKit

class AboutvView: UIView {


    lazy var myImage: UIImageView = {
        var imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        
        imageView.image = UIImage(named: "view")
        return imageView
    }()

    lazy var logoImage: UIImageView = {
        var imageLogo = UIImageView()
        imageLogo.contentMode = .scaleAspectFit
        imageLogo.image = UIImage(named: "barber")
        return imageLogo
    }()

    lazy var buttonRegister: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("Записаться", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 20
        return button
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)
        screenConstraint()
    }


    private func screenConstraint(){
        self.addSubview(myImage)
        myImage.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
//        myImage.center = self.center


        self.addSubview(logoImage)
        logoImage.snp.makeConstraints { make in
            make.left.equalTo(self).inset(40)
            make.right.equalTo(self).inset(40)
            make.height.equalTo(200)
            make.width.equalTo(150)
            make.center.equalToSuperview()

        }


        self.addSubview(buttonRegister)
        buttonRegister.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().inset(150)
            make.width.equalTo(250)
            make.height.equalTo(50)
            make.top.equalTo(logoImage.snp_bottomMargin).inset(150)

        }


    }





    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
