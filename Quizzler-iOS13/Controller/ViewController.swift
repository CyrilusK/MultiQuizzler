import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelScore: UILabel!
    @IBOutlet weak var textQuestion: UILabel!
    @IBOutlet weak var firstAnswer: UIButton!
    @IBOutlet weak var secondAnswer: UIButton!
    @IBOutlet weak var thirdAnswer: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quiz = Quiz()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func pressedButton(_ sender: UIButton) {
        
        if quiz.checkAnswers(sender.currentTitle!) {
            sender.backgroundColor = UIColor.green
        }
        else {
            sender.backgroundColor = UIColor.red
        }
        
        quiz.increaseNumberQuestion()
        
        Timer.scheduledTimer(
            timeInterval: 0.2,
            target: self,
            selector: #selector(updateUI),
            userInfo: nil,
            repeats: false)
    }
    

    @objc func updateUI() {
        textQuestion.text = quiz.getTextQuestion()
        let answerChoices = quiz.getAnswers()
        firstAnswer.setTitle(answerChoices[0], for: .normal)
        secondAnswer.setTitle(answerChoices[1], for: .normal)
        thirdAnswer.setTitle(answerChoices[2], for: .normal)
        labelScore.text = "Score: \(quiz.score) / \(quiz.quiz.count)"
        progressBar.progress = quiz.getProgress()
        firstAnswer.backgroundColor = UIColor.clear
        secondAnswer.backgroundColor = UIColor.clear
        thirdAnswer.backgroundColor = UIColor.clear
    }

}

