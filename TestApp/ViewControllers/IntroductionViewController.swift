//
//  IntroductionViewController.swift
//  TestApp
//
//  Created by Елена Дранкина on 04.04.2021.
//

import UIKit

class IntroductionViewController: UIViewController {

    @IBOutlet var startTestButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Helper().setGradientBackground(view: self)
        Helper().shadowButtonDrowing(buttonToDrowShadow: startTestButton)
    }

    @IBAction func unwind(segue: UIStoryboardSegue) {}
}

