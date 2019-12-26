//
//  ViewController.swift
//  introduce
//
//  Created by yuta on 2019/12/02.
//  Copyright © 2019 yuta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var orderLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var answer4: UIButton!
    @IBOutlet weak var imageQuestion: UIImageView!
    @IBOutlet weak var imageQuestionLabel: UILabel!
    
    var questionsList = QuestionsList()
    var questionNumber:Int = 0
    var sound = Sound()
    var correctCount:Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
          
        answer1.layer.cornerRadius = 20
        answer2.layer.cornerRadius = 20
        answer3.layer.cornerRadius = 20
        answer4.layer.cornerRadius = 20
        
        imageQuestionLabel.text = ""
                
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        questionNumber = 0
        
        orderLabel.text = "第" + String(questionNumber + 1) + "問"
        
        questionLabel.text = questionsList.list[questionNumber].question
        answer1.setTitle(questionsList.list[questionNumber].answer[0], for: .normal)
        answer2.setTitle(questionsList.list[questionNumber].answer[1], for: .normal)
        answer3.setTitle(questionsList.list[questionNumber].answer[2], for: .normal)
        answer4.setTitle(questionsList.list[questionNumber].answer[3], for: .normal)
        
    }

    @IBAction func answerButton(_ sender: Any) {
        // 正解を押した場合
        if (sender as AnyObject).tag == questionsList.list[questionNumber].correct {
            correctCount += 1
            sound.playSound(fileName: "pinpon", extensionName: "mp3")

        //不正解を押した場合
        } else {
            sound.playSound(fileName: "bubu", extensionName: "mp3")

        }
        questionNumber += 1
        nextQuestion()
    }
                
        
        
    
    //次の問題表示
    func nextQuestion() {
        if  questionNumber  <= questionsList.list.count - 1 {
            orderLabel.text = "第" + String(questionNumber + 1) + "問"
             
             //画像の問題
             if questionsList.list[questionNumber].question == "このぬいぐるみの名前は？" {
                 
                 questionLabel.text = ""
                 
                 imageQuestion.image = UIImage(named: "rasuo")
                 imageQuestionLabel.text = questionsList.list[questionNumber].question
                 answer1.setTitle(questionsList.list[questionNumber].answer[0], for: .normal)
                 answer2.setTitle(questionsList.list[questionNumber].answer[1], for: .normal)
                 answer3.setTitle(questionsList.list[questionNumber].answer[2], for: .normal)
                 answer4.setTitle(questionsList.list[questionNumber].answer[3], for: .normal)
             
             //文字の問題
             } else {
                 imageQuestion.image = UIImage(named: "")
                 imageQuestionLabel.text = ""

                 questionLabel.text = questionsList.list[questionNumber].question
                 answer1.setTitle(questionsList.list[questionNumber].answer[0], for: .normal)
                 answer2.setTitle(questionsList.list[questionNumber].answer[1], for: .normal)
                 answer3.setTitle(questionsList.list[questionNumber].answer[2], for: .normal)
                 answer4.setTitle(questionsList.list[questionNumber].answer[3], for: .normal)
             }
    
        //全問終了
        } else {
            
            performSegue(withIdentifier: "next", sender: nil)
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "next" {
            let nextVC = segue.destination as! NextViewController
            nextVC.correctCount = correctCount
            nextVC.questionCount = questionNumber
            
        }
    }

    
    
}

