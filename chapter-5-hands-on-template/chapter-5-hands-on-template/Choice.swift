//
//  Choice.swift
//  chapter-5-hands-on-template
//
//  Created by Sanpawat Sewsuwan on 1/5/2567 BE.
//

import Foundation
import Observation

@Observable
class Choice: Identifiable {
    var id: UUID = UUID()
    var title: String
    var isAnswered: Bool
    var isSelected: Bool = false
    
    init(title: String, isAnswered: Bool) {
        self.title = title
        self.isAnswered = isAnswered
    }
}
