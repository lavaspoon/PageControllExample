//
//  SuguePushViewController.swift
//  PageControllExample
//
//  Created by spoon lava on 2022/08/03.
//

import UIKit

class SuguePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func BackBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    

}
