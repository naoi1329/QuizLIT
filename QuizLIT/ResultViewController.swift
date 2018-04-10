//
//  ResultViewController.swift
//  QuizLIT
//
//  Created by 直井翔汰 on 2018/04/10.
//  Copyright © 2018年 直井翔汰. All rights reserved.
//

import Foundation
import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet var correctAnswerLabel: UILabel! {
        didSet {
            correctAnswerLabel.text = "\(String(answerNumber))問中\(String(correctAnswerNumber))問正解です!"
        }
    }
    
    var answerNumber: Int = 0 {
        didSet {
            print(correctAnswerLabel)
        }
    }
    
    var correctAnswerNumber: Int = 0 {
        didSet {
            print(correctAnswerLabel)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red:0.93, green:0.86, blue:0.86, alpha:1.0)
    }
    
}
