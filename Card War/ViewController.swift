//
//  ViewController.swift
//  Card War
//
//  Created by Huy Trinh Duc on 5/21/18.
//  Copyright © 2018 Huy Trinh Duc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: Any) {
        //Random 2 number in two card correlative with cardnumber
        //13 is total of number from 2->14
        //+2 to start count from 2
        let leftRandomNumber = arc4random_uniform(13) + 2
        let rightRandomNumber = arc4random_uniform(13) + 2

        //Change the card image by the above Random number code
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        //Compare number to update score
        if leftRandomNumber > rightRandomNumber
        {
            //Update the score:
            leftScore +=  1
            //Update the label:
            leftScoreLabel.text = String(leftScore)
        }
        else if rightRandomNumber > leftRandomNumber
        {
            //Update the score:
            rightScore += 1
            //Update the label:
            rightScoreLabel.text = String(rightScore)
        }
        else
        {
            rightScoreLabel.text = String(rightScore)
        }
    }
    

}

