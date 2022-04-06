//
//  GreetingView.swift
//  testMVP
//
//  Created by Pu Yue - PU YUE on 2022/04/06.
//

import Foundation

// 给View使用
protocol GreetingView {
    func setGreeting(greeting: String)
}

// 给Presenter使用
protocol GreetingViewPresenter {
    init(view: GreetingView, person:Person)
    func showGreeting()
}

class GreetingPresenter: GreetingViewPresenter {
    
    let view : GreetingView
    let person: Person
    
    // GreetingViewPresenter 代理
    required init(view: GreetingView, person: Person) {
        self.view = view
        self.person = person
    }

    func showGreeting() {
        self.view.setGreeting(greeting: "你好, \(self.person.firstName) \(self.person)")
    }
}
