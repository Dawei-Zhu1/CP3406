//
//  GameView.swift
//  Week4 AndroidTrivia
//
//  Created by Dawei Zhu on 2025/10/3.
//

import SwiftUI

struct Question {
    var text: String
    var answers: [String]
    init(text: String, answers: [String]) {
        self.text = text
        self.answers = answers
    }
    var correctAnswer: String {
        answers.first!
    }
    var shuffledAnswers: [String] {
        answers.shuffled()
    }
}
//    List of all questions
var questions: [Question] = [
    Question(text:"What is Android Jetpack?",
             answers: ["All of these", "Tools", "Documentation", "Libraries"]),
    Question(text:"What is the base class for layouts?",
             answers: ["ViewGroup", "ViewSet", "ViewCollection", "ViewRoot"]),
    Question(text:"What layout do you use for complex screens?",
             answers: ["ConstraintLayout", "GridLayout", "LinearLayout", "FrameLayout"]),
    Question(text:"What do you use to push structured data into a layout?",
             answers: ["Data binding", "Data pushing", "Set text", "An OnClick method"]),
    Question(text:"What method do you use to inflate layouts in fragments?",
             answers: ["onCreateView()", "onActivityCreated()", "onCreateLayout()", "onInflateLayout()"]),
    Question(text:"What's the build system for Android?",
             answers: ["Gradle", "Graddle", "Grodle", "Groyle"]),
    Question(text:"Which class do you use to create a vector drawable?",
             answers: ["VectorDrawable", "AndroidVectorDrawable", "DrawableVector", "AndroidVector"]),
    Question(text:"Which one of these is an Android navigation component?",
             answers: ["NavController", "NavCentral", "NavMaster", "NavSwitcher"]),
    Question(text:"Which XML element lets you register an activity with the launcher activity?",
             answers: ["intent-filter", "app-registry", "launcher-registry", "app-launcher"]),
    Question(text:"What do you use to mark a layout for data binding?",
             answers: ["<layout>", "<binding>", "<data-binding>", "<dbinding>"])
]



struct GameView: View {
    let options = questions[0].answers
    @State var numberOFQuestions: Int = 3
    @State private var selectedOption: String? = nil
    //    Current Questions and Answers
    @State var currentQuestion: Int = 0
    @State var answers: [Text]? = nil
    @State var isGameOver: Bool = false
    
    var body: some View {
        VStack {
            Image(.androidCategorySimple)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            VStack {
                Text(questions[0].text)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .padding()
                
                ForEach(options, id: \.self) { option in
                    Button(
                        action: {
                            selectedOption = option
                        }) {
                            Text(option)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(
                                    RoundedRectangle(cornerRadius: 12).fill(
                                        selectedOption == option ? Color.accentColor.opacity(0.2) : Color.optionNotSelected
                                    )
                                )
                                .foregroundColor(/*selectedOption == option ? .white : */.black)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 12).stroke(
                                        Color.accentColor, lineWidth:selectedOption == option ? 2 : 0
                                    )
                                )
                        }
                }
            }
            Button("Submit"){
                if selectedOption != questions[0].correctAnswer {
                    isGameOver.toggle()
                }
            }
            .buttonStyle(.borderedProminent)
            .controlSize(ControlSize.large)
            .padding()
            .disabled(selectedOption == nil) // Disable the button when the selection is null
            .navigationDestination(isPresented: $isGameOver){GameOverView()}
            Spacer()
        }.safeAreaPadding()
    }
}

#Preview {
    GameView()
}
