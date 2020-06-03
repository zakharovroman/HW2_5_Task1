//
//  Answer.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 28.05.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

struct Answer {
    let text: String
    let type: AnimalType
}

struct Result {
    let type: AnimalType
    var count: Int = 0
    
    init(type: AnimalType) {
        self.type = type
    }
}
