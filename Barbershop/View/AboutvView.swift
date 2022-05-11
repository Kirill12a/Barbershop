
import UIKit
import SnapKit
import SwiftUI

class AboutvView: UIView {

 
//MARK: - Элементы Картинки
    lazy var myImage: UIImageView = {
        var imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "view")
        return imageView
    }()

    lazy var logoImage: UIImageView = {
        var imageLogo = UIImageView()
        imageLogo.contentMode = .scaleAspectFit
        imageLogo.image = UIImage(named: "barber")

        imageLogo.backgroundColor = .red
        return imageLogo
    }()


//MARK: - Элементы Кнопки
    lazy var buttonRegister: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("Записаться", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(phone(_:)), for: .touchDown)
        return button
    }()
    
    @objc func whatsApp(_ sender: UIButton) {
        let phoneNumber = "+79185143314"
        let url = URL(string: "https://api.whatsapp.com/send?phone=\(phoneNumber)")!
        if UIApplication.shared.canOpenURL(url) {
            if #available(iOS 13.0, *) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            else {
                UIApplication.shared.openURL(url)
            }
        }
//        UIApplication.shared.open(URL(string: "https://www.google.ru/")! as URL, options: [:], completionHandler: nil)
    }
    
    @objc func phone(_ sender: UIButton) {
        let phoneNubmer = "+79185143314"
        if let url = URL(string: "tel://\(phoneNubmer)") {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.open(url)
            }
        }
        //UIApplication.shared.open(URL(string: "")! as URL, options: [:], completionHandler: nil)
    }
    
    lazy var buttonWhatsApp: UIButton = {
        var button = UIButton(type: .system)
        button.setTitle("Написать нам ", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(whatsApp(_:)), for: .touchDown)
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        screenConstraint()

    }

//MARK: - Констрейнты
    private func screenConstraint(){

        
        self.addSubview(myImage)
        myImage.snp.makeConstraints { make in
            make.top.leading.trailing.bottom.equalToSuperview()
        }


        self.addSubview(logoImage)
        logoImage.snp.makeConstraints { make in
            make.left.equalTo(self).inset(40)
            make.right.equalTo(self).inset(40)
            make.height.equalTo(200)
            make.width.equalTo(150)
           // make.center.equalToSuperview()
            make.top.equalToSuperview().inset(235)

        }
        
        self.addSubview(buttonWhatsApp)
        buttonWhatsApp.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(250)
            make.height.equalTo(50)
            make.bottom.equalToSuperview().inset(400)
            make.top.equalTo(logoImage.snp_bottomMargin).inset(210)
            
        }


        self.addSubview(buttonRegister)
        buttonRegister.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().inset(350)
            make.width.equalTo(250)
            make.height.equalTo(50)
            make.top.equalTo(logoImage.snp_bottomMargin).inset(150)
        }
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
//MARK: - Canvas
struct FlowProvider: PreviewProvider {
    static var previews: some View {
        Group {
            ContainterView().edgesIgnoringSafeArea(.all).previewInterfaceOrientation(.portrait)
            ContainterView().edgesIgnoringSafeArea(.all).previewInterfaceOrientation(.portrait)
        }
    }

    struct ContainterView: UIViewControllerRepresentable {

        let view = AboutvViewController()
        func makeUIViewController(context: UIViewControllerRepresentableContext<FlowProvider.ContainterView>) -> AboutvViewController {
            return view
        }

        func updateUIViewController(_ uiViewController: FlowProvider.ContainterView.UIViewControllerType, context: UIViewControllerRepresentableContext<FlowProvider.ContainterView>) {

        }
    }
}

