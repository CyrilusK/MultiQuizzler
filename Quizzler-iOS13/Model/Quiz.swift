import Foundation

struct Quiz {
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], c: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], c: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], c: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], c: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], c: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], c: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], c: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], c: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], c: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], c: "Australia")
                 ]
    
    var numberQuestion = 0
    var score = 0
    
    func getTextQuestion() -> String {
        quiz[numberQuestion].question
    }
    
    mutating func increaseNumberQuestion() -> Void {
        if numberQuestion < quiz.count - 1 {
            numberQuestion += 1
        }
        else {
            numberQuestion = 0
            score = 0
        }
    }
    
    func getProgress() -> Float {
        Float(numberQuestion) / Float(quiz.count)
    }
    
    func getAnswers() -> [String] {
        quiz[numberQuestion].answers
    }
    
    mutating func checkAnswers(_ answer: String) -> Bool {
        if quiz[numberQuestion].correct == answer {
            score += 1
            return true
        }
        else {
            return false
        }
    }
}
