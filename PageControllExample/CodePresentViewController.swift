//
//  CodePresentViewController.swift
//  PageControllExample
//
//  Created by spoon lava on 2022/08/03.
//

import UIKit

protocol SendDataDelegate : AnyObject {
    func sendData(name: String)
}

class CodePresentViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name : String?
    weak var delegate : SendDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //옵셔널이기 때문에 옵셔널 바인딩
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    @IBAction func BackBtn(_ sender: UIButton) {
        self.delegate?.sendData(name: "lava")
        self.presentingViewController?.dismiss(animated: true)
    }
}
