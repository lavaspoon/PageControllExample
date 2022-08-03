//
//  ViewController.swift
//  PageControllExample
//
//  Created by spoon lava on 2022/08/03.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapCodePushBtn(_ sender: UIButton) {
        //스토리보드 인스턴스화
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePushViewController") else { return }
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    @IBAction func tapCodePresentBtn(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePresentViewController") else { return }
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true, completion: nil)
    }
}

