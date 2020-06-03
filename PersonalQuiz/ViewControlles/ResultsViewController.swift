//
//  ResultsViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 01.06.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    // 1. Передать массив с ответами на этот экран
    // 2. Определить наиболее часто встречающийся тип животного
    // 3. Отобразить результаты на экране
    // 4. Избавится от кнопки back
    
    // 5. test aplication
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var definitionResultLabel: UILabel!
    
    var resultAnimalType: AnimalType!

    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = String(resultAnimalType.rawValue)
        definitionResultLabel.text = resultAnimalType.definition
        
    }
    
    deinit {
        //print("ResultsViewController has been dealocated")
    }

}
