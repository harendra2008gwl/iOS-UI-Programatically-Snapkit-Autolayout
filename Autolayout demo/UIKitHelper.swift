//
//  UIKitHelper.swift
//  Autolayout demo
//
//  Created by HS on 31/10/20.
//

import Foundation
import UIKit

func getButton(with frame: CGRect = .zero, title: String = "demo button") -> UIButton {
    let button = UIButton(type: .custom)
    button.backgroundColor = .blue
    button.frame = frame
    button.setTitle(title, for: .normal)
    button.setTitleColor(.white, for: .normal)
    return button
}

func getLable(with frame: CGRect = .zero, title: String = "demo lable") -> UILabel {
    let lable = UILabel(frame: frame)
    lable.backgroundColor = .red
    lable.text = title
    lable.textColor = .white
    lable.textAlignment = .center
    return lable
}

func getTextView(with frame: CGRect = .zero, title: String = "demo title") -> UITextView {
    let tView = UITextView(frame: frame)
    tView.backgroundColor = .red
    tView.text = title
    tView.textColor = .white
    tView.textAlignment = .left
    return tView
}
