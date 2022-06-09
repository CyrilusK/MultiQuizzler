import Foundation

struct Question {
    let question : String
    let answers : [String]
    let correct : String
    
    init(q: String, a: [String], c: String) {
        question = q
        answers = a
        correct = c
    }
}
