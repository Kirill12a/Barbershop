

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
    
}

