//
//  CodePresentViewController.swift
//  PageControllExample
//
//  Created by spoon lava on 2022/08/03.
//

import UIKit

class CodePresentViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func BackBtn(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
