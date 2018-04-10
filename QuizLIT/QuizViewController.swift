//
//  QuizViewController.swift
//  QuizLIT
//
//  Created by 直井翔汰 on 2018/04/10.
//  Copyright © 2018年 直井翔汰. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    var quizArray: [[Any]] {
        return [["「HO～ほら行こうぜ」この歌い出しは？","ザ⭐︎ピ〜ス","LOVEマシーン","サマーナイトタウン", 1],
                ["°C-ute内でメンバー同士の誕生日が一緒のメンバーは？","岡井・中島","中島・矢島","矢島・萩原", 3],
                ["モーニング娘。OGの工藤遥が出演している作品は？","快盗戦隊ルパンレンジャーVS警察戦隊パトレンジャー","仮面ライダービルド","HUGっと！プリキュア", 1]]
    }
    
    @IBOutlet weak var quizLabel: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    var answeredNumber: Int = 0
    var correctAnswerNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setButtonTitle(array: quizArray[0])
        
        self.view.backgroundColor = UIColor(red:0.93, green:0.86, blue:0.86, alpha:1.0)
    }
    
    @IBAction func solveButton(_ sender: UIButton) {
        
        if (quizArray[answeredNumber][4] as! Int) == sender.tag {
            correctAnswerNumber += 1
        }
        
        answeredNumber += 1
        
        if quizArray.count == answeredNumber {
            //画面遷移
            self.performSegue(withIdentifier: "toResultViewController", sender: self.correctAnswerNumber)
        } else {
            setButtonTitle(array: quizArray[answeredNumber])
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultViewController" {
            let resultViewController = segue.destination as! ResultViewController
            resultViewController.answerNumber = self.quizArray.count
            print(sender as! Int)
            resultViewController.correctAnswerNumber = sender as! Int
        }
    }
    
    func setButtonTitle(array: [Any]) {
        quizLabel.text = array[0] as! String
        firstButton.setTitle(array[1] as! String, for: .normal)
        secondButton.setTitle(array[2] as! String, for: .normal)
        thirdButton.setTitle(array[3] as! String, for: .normal)
    }
    
}

