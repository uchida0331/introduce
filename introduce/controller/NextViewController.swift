//
//  NextViewController.swift
//  introduce
//
//  Created by 内田優太 on 2019/12/03.
//  Copyright © 2019 yuta. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var commentLabel2: UILabel!
    @IBOutlet weak var correctCountLabel: UILabel!
    @IBOutlet weak var questionCountLabel: UILabel!
    
    var correctCount:Int = 0
    var questionCount:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        correctCountLabel.text = String(correctCount)
        questionCountLabel.text = "/" + String(questionCount)
        commentSelect()
    }
    
    //戻るボタン
    @IBAction func backButtom(_ sender: Any) {
        performSegue(withIdentifier: "reset", sender: nil)
    }
    
    //コメントを選択
    func commentSelect() {
        let cC = Double(correctCount)
        let qC = Double(questionCount)
        
        if cC / qC * 100 == 100  {
            commentLabel.text = "あなたは内田王です！"
            commentLabel2.text = "ありがとう。"
        } else if cC / qC * 100 >= 70 {
            commentLabel.text = "あなたは内田の仲良し友達です"
            commentLabel2.text = "このあとご飯食べにいきましょう"
        } else if cC / qC * 100 >= 40 {
            commentLabel.text = "あなたは内田の友達です"
            commentLabel2.text = "遊びに誘ってください"

        } else if cC / qC * 100 >= 1 {
            commentLabel.text = "あなたは内田の知り合いです"
        } else {
            commentLabel.text = "初めまして、内田です。"
        }
    }
    
    
    
}
