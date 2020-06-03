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
    
    var answersChoosen: [Answer]!
    
    private var cat = Result(type: .cat)
    private var dog = Result(type: .dog)
    private var rabbit = Result(type: .rabbit)
    private var turtle = Result(type: .turtle)
    
    private var results = [Result]()
    private  var resultAnimalType: AnimalType!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for item in answersChoosen {
            switch item.type {
            case .cat:
                cat.count = +1
            case .dog:
                dog.count = +1
            case .rabbit:
                rabbit.count = +1
            case .turtle:
                turtle.count = +1
            }
            //print(item)
        }
        
        results = [cat, dog, rabbit, turtle]
        results.sort {$0.count > $1.count}
        resultAnimalType = results.first?.type
        
        resultLabel.text = String(resultAnimalType.rawValue)
        definitionResultLabel.text = resultAnimalType.definition
    }
    
    deinit {
        //print("ResultsViewController has been dealocated")
    }

}
