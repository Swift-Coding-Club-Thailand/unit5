//
//  ContentView.swift
//  chapter-5-hands-on-template
//
//  Created by Sanpawat Sewsuwan on 1/5/2567 BE.
//

import SwiftUI
import Observation

struct ContentView: View {
    
    @State private var quizes: [Quiz] = [
        Quiz(question: "Is cat a mammal?", choices: [
            Choice(title: "Yes", isAnswered: true),
            Choice(title: "No", isAnswered: false)
        ]),
        Quiz(question: "What is the color of apple?", choices: [
            Choice(title: "Blue", isAnswered: false),
            Choice(title: "Yellow", isAnswered: false),
            Choice(title: "Red", isAnswered: true)
        ])
    ]
    @State private var currentQuiz: Int = 0
    
    var body: some View {
        ZStack {
            Color.darkCyan
                .ignoresSafeArea()

            /// แสดงชุดคำถามและคำตอบ
            VStack {
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("Question \(currentQuiz + 1)")
                        .foregroundStyle(Color.white)
                        .font(.title3)
                    
                    Text(quizes[currentQuiz].question)
                        .foregroundStyle(Color.white)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 20)
            
                    Spacer()
                    
                    Button(action: {

                    }, label: {
                        Text("Submit")
                            .frame(maxWidth: .infinity, minHeight: 80)
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.white)
                            .background(Color.darkBlue)
                            .clipShape(.capsule)
                    })
                }
                .padding([.leading, .trailing], 26)
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

