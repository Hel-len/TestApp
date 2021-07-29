//
//  Helper.swift
//  LoginApp
//
//  Created by Елена Дранкина on 31.03.2021.
//

import UIKit

class Helper {
    
    func setGradientBackground(view: UIViewController) {
        let colorTop =  UIColor(red: 255.0/255.0, green: 191.0/255.0, blue: 203.0/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 176.0/255.0, green: 223.0/255.0, blue: 229.0/255.0, alpha: 1.0).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = view.view.bounds
        
        view.view.layer.insertSublayer(gradientLayer, at:0)
    }
    
    func shadowTextFieldDrowing(textFieldToDrowShadow: UITextField) {
        textFieldToDrowShadow.layer.cornerRadius = 10
        textFieldToDrowShadow.layer.shadowRadius = 10
        textFieldToDrowShadow.layer.shadowOffset = .zero
        textFieldToDrowShadow.layer.shadowOpacity = 0.5
        textFieldToDrowShadow.layer.shadowColor = UIColor.black.cgColor
        textFieldToDrowShadow.layer.shadowPath = UIBezierPath(rect: textFieldToDrowShadow.bounds).cgPath
    }
    
    func shadowButtonDrowing(buttonToDrowShadow: UIButton) {
        buttonToDrowShadow.layer.cornerRadius = 10
        buttonToDrowShadow.layer.shadowRadius = 10
        buttonToDrowShadow.layer.shadowOffset = .zero
        buttonToDrowShadow.layer.shadowOpacity = 0.5
        buttonToDrowShadow.layer.shadowColor = UIColor.black.cgColor
        buttonToDrowShadow.layer.shadowPath = UIBezierPath(rect: buttonToDrowShadow.bounds).cgPath
    }
    
    func shadowButtonStackDrawing(buttonStack: [UIButton]) {
        for button in buttonStack {
            shadowButtonDrowing(buttonToDrowShadow: button)
        }
    }
}

