//
//  ViewController.swift
//  Autolayout demo
//
//  Created by HS on 31/10/20.
//

import SnapKit
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        addAllUIComponents()
        createForm()
    }

    func createForm() {
        let formTitle = getLable(title: "Contact us")
        let messageBox = getTextView()
        let submitBtn = getButton(title: "Submit")
        view.addSubview(formTitle)
        view.addSubview(messageBox)
        view.addSubview(submitBtn)

        formTitle.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(40)
            make.left.equalTo(self.view).offset(20)
            make.right.equalTo(self.view).offset(-20)
            make.height.equalTo(25)
        }

        messageBox.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(formTitle.snp.bottom).offset(10)
            make.left.equalTo(self.view).offset(20)
            make.right.equalTo(self.view).offset(-20)
            make.height.equalTo(150)
        }

        submitBtn.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(messageBox.snp.bottom).offset(20)
            make.left.equalTo(self.view).offset(20)
            make.right.equalTo(self.view).offset(-20)
            make.height.equalTo(30)
        }
    }
    
    
    // Adding all components at once
    func addAllUIComponents() {
        // 1. creating UI Components
        let btn1 = getButton(title: "Button 1")
        let btn2 = getButton(title: "Button 2")
        let btn3 = getButton(title: "Button 3")
        let btn4 = getButton(title: "Button 4")
        let btn5 = getButton(title: "Button 5")

        let lbl1 = getLable(title: "label 1")
        let lbl2 = getLable(title: "label 2")
        let lbl3 = getLable(title: "label 3")
        let lbl4 = getLable(title: "label 4")
        let lbl5 = getLable(title: "label 5")

        // 2. adding UI Components to viewcontroller
        let elements = [btn1, btn2, btn3, btn4, btn5, lbl1, lbl2, lbl3, lbl4, lbl5]
        for elemement in elements {
            view.addSubview(elemement)
        }

        let offset = 20
        let height = 40

        // 2. adding autolayout constraints programatically.
        btn1.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.left.equalTo(self.view).offset(offset)
            make.right.equalTo(self.view).offset(-offset)
            make.height.equalTo(height)
        }

        btn2.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(btn1.snp.bottom).offset(10)
            make.left.equalTo(self.view).offset(offset)
            make.right.equalTo(self.view).offset(-offset)
            make.height.equalTo(btn1.snp.height)
        }

        btn3.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(btn1.snp.bottom).offset(10)
            make.left.equalTo(self.view).offset(offset)
            make.right.equalTo(self.view).offset(-offset)
            make.height.equalTo(btn1.snp.height)
        }

        btn4.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(btn3.snp.bottom).offset(10)
            make.left.equalTo(self.view).offset(offset)
            make.right.equalTo(self.view).offset(-offset)
            make.height.equalTo(btn1.snp.height)
        }

        btn5.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(btn4.snp.bottom).offset(10)
            make.left.equalTo(self.view).offset(offset)
            make.right.equalTo(self.view).offset(-offset)
            make.height.equalTo(btn1.snp.height)
        }

        lbl1.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(btn5.snp.bottom).offset(10)
            make.left.equalTo(self.view).offset(offset)
            make.right.equalTo(self.view).offset(-offset)
            make.height.equalTo(btn1.snp.height)
        }

        lbl2.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(lbl1.snp.bottom).offset(10)
            make.left.equalTo(self.view).offset(offset)
            make.right.equalTo(self.view).offset(-offset)
            make.height.equalTo(btn1.snp.height)
        }
        lbl3.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(lbl2.snp.bottom).offset(10)
            make.left.equalTo(self.view).offset(offset)
            make.right.equalTo(self.view).offset(-offset)
            make.height.equalTo(btn1.snp.height)
        }
        lbl4.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(lbl3.snp.bottom).offset(10)
            make.left.equalTo(self.view).offset(offset)
            make.right.equalTo(self.view).offset(-offset)
            make.height.equalTo(btn1.snp.height)
        }

        lbl5.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(lbl4.snp.bottom).offset(10)
            make.left.equalTo(self.view).offset(offset)
            make.right.equalTo(self.view).offset(-offset)
            make.height.equalTo(btn1.snp.height)
        }
    }
}
