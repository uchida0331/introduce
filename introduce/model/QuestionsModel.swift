//
//  QuestionsModel.swift
//  introduce
//
//  Created by yuta on 2019/12/18.
//  Copyright © 2019 yuta. All rights reserved.
//

import Foundation

class QuestionsModel {
    
    let question:String
    let answer:[String]
    let correct:Int
    
    init(questionText:String, answerText:[String], correctNumber:Int) {
        question = questionText
        answer = answerText
        correct = correctNumber
    }
    
    
    
}
