//
//  ResultsViewController.swift
//  TestApp
//
//  Created by Елена Дранкина on 06.04.2021.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet var mainResultLabel: UILabel!
    @IBOutlet var fullReesultLabel: UILabel!
    @IBOutlet var backButton: UINavigationItem!
    
    var answers: [Answer]!
    private var results: [AnimalType] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backButton.hidesBackButton = true
        Helper().setGradientBackground(view: self)
        findResult()
        mainResultLabel.text = "Вы - " + String(results.first?.rawValue ?? "U")
        fullReesultLabel.text = results.first?.definition ?? "Unknown"
    }
    
    private func findResult() {
        var counts = [AnimalType: Int]()

        for typeValue in answers {
            counts[typeValue.type] = (counts[typeValue.type] ?? 0) + 1
        }

        results = counts.sorted { $0.value > $1.value }.map { $0.key }
    }
}
