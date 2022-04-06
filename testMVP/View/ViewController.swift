//
//  ViewController.swift
//  testMVP
//
//  Created by Pu Yue - PU YUE on 2022/04/06.
//

import UIKit

class ViewController: UIViewController, GreetingView {
    
    @IBOutlet weak var lbTitle: UILabel!
    var presenter: GreetingPresenter? = nil
    var model : Person? = nil
    
    @IBAction func onClick(_ sender: Any) {
        self.presenter?.showGreeting()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Presenter的初始化, 会把View 和 Model联系起来
        model = Person(firstName: "Grubby", lastName: "Gao")
        presenter = GreetingPresenter(view: self, person: self.model!)
    }
    
    // 回调:P更新V时,会调用此方法
    func setGreeting(greeting: String) {
        self.lbTitle.text = greeting
    }
    
    
}

