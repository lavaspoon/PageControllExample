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
        print("ViewController 뷰가 로드됨")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController 뷰가 나타날 것이다.")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewController 뷰가 나타남.")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViewController 뷰가 사라질 것이다.")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewController 뷰가 사라짐.")
    }
    
    // 다운캐스팅으로 통해 해당 뷰컨트롤러의 프로퍼티에 접근 가능
    @IBAction func tapCodePushBtn(_ sender: UIButton) {
        //스토리보드 인스턴스화
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePushViewController") as? CodePushViewController else { return }
        
        viewController.name = "pushData"
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    @IBAction func tapCodePresentBtn(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePresentViewController") as? CodePresentViewController else { return }
        
        viewController.name = "presentData"
        viewController.modalPresentationStyle = .fullScreen
        self.present(viewController, animated: true, completion: nil)
    }
}

