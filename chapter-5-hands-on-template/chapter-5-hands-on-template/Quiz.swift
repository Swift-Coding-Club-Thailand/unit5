//
//  Quiz.swift
//  chapter-5-hands-on-template
//
//  Created by Sanpawat Sewsuwan on 1/5/2567 BE.
//

import Observation

@Observable
class Quiz {
    var question: String
    var choices: [Choice]
    
    init(question: String, choices: [Choice]) {
        self.question = question
        self.choices = choices
    }
}
