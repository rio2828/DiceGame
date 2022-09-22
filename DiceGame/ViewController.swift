//
//  ViewController.swift
//  DiceGame
//
//  Created by 김태현 on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    
    var diceManager = DiceManager()
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        firstImageView.image = diceManager.getFirstDice()
        secondImageView.image = diceManager.getFirstDice()
    }

    @IBAction func rollButtonTapped(_ sender: UIButton) {
    // 첫번째 이미지뷰를 랜덤으로 변경
        firstImageView.image = diceManager.getRandomDice()

    // 두번재 이미지뷰를 랜덤으로 변경
        secondImageView.image = diceManager.getRandomDice()
    }
}

