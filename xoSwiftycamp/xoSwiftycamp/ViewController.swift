//
//  ViewController.swift
//  xoSwiftycamp
//
//  Created by Khaled on 7/6/19.
//  Copyright © 2019 Khaled. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    
    var activePlayer = 1 //cross
    var gameState = [0,0,0,0,0,0,0,0,0]
    let wininigCompination = [[1,2,3],[4,5,6],[7,8,9],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
    var gameIsActive = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPresed(_ sender: Any) {
        if gameState[(sender as AnyObject).tag - 1] == 0 && gameIsActive == true{
            gameState[(sender as AnyObject).tag - 1] = activePlayer
            if activePlayer == 1 {
                (sender as AnyObject).setImage(UIImage(named: "cross"), for: UIControl.State())
                activePlayer = 2
            }
            else {
                (sender as AnyObject).setImage(UIImage(named: "nought"), for: UIControl.State())
                activePlayer = 1
            }
        }
        for combination in wininigCompination {
            if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]] {
                gameIsActive == false
                
                if gameState[combination[0]] == 1 {
                    print("cross")
                } else {
                    print("nought")
                }
                
            }
        }
        
    }
    
}

