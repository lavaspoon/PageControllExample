//
//  CodePushViewController.swift
//  PageControllExample
//
//  Created by spoon lava on 2022/08/03.
//

import UIKit

class CodePushViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //옵셔널이기 때문에 옵셔널 바인딩
        if let name = name {
            self.nameLabel.text = name
        }
    }
    @IBAction func BackBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
