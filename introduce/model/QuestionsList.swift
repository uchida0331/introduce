//
//  QuestionsList.swift
//  introduce
//
//  Created by 内田優太 on 2019/12/19.
//  Copyright © 2019 yuta. All rights reserved.
//

import Foundation

class QuestionsList {
    
    var list = [QuestionsModel]()
    
    init() {
        list.append(QuestionsModel(questionText: "1番好きな食べ物は？", answerText: ["からあげ","カレーライス","リンゴ","サバ"], correctNumber: 0 ))
        list.append(QuestionsModel(questionText: "好きな色は？", answerText: ["レッド","グリーン","ピンク","ブルー"], correctNumber: 2 ))
        list.append(QuestionsModel(questionText: "枕カバーにいるキャラクターは？", answerText: ["ドラえもん","チップとデール","マイメロディ","スヌーピー"], correctNumber: 1 ))
        list.append(QuestionsModel(questionText: "毎日食べる食べ物は？", answerText: ["うどん","納豆","プロテイン","Lチキ"], correctNumber: 1 ))
        list.append(QuestionsModel(questionText: "お風呂で最初に洗う場所は？", answerText: ["髪","足","腕","顔"], correctNumber: 0 ))
        list.append(QuestionsModel(questionText: "このぬいぐるみの名前は？", answerText: ["パスカル","カルロス","バッカス","ラス男"], correctNumber: 3 ))
        list.append(QuestionsModel(questionText: "1番好きな女優は？", answerText: ["有村架純","石原さとみ","本田翼","片桐はいり"], correctNumber: 2 ))
        list.append(QuestionsModel(questionText: "誰になりたい？", answerText: ["石油王","ローランド","田中圭","ジャスティンビーバー"], correctNumber: 0 ))
        list.append(QuestionsModel(questionText: "1番好きなお寿司は？", answerText: ["ウニ","炙りサーモン","サバ","納豆巻き"], correctNumber: 1 ))
        list.append(QuestionsModel(questionText: "出身地はどこ？", answerText: ["京都府","福岡県","石川県","北海道"], correctNumber: 3 ))
        list.append(QuestionsModel(questionText: "誕生日はいつ？", answerText: ["3月","7月","10月","12月"], correctNumber: 3 ))
        list.append(QuestionsModel(questionText: "1番好きな果物は？", answerText: ["イチゴ","もも","リンゴ","メロン"], correctNumber: 2 ))




    }
    
    
}
