//
//  BattleResultViewController.swift
//  RockPaperScissors3
//
//  Created by Avnish Khandeshi on 12/6/21.
//

import UIKit

class BattleResultViewController: UIViewController {
    
    var numberChosen : Int!
    
    @IBOutlet weak var playerChosenImage: UIImageView!
    
    @IBOutlet weak var computerChosenImage: UIImageView!
    
    @IBOutlet weak var playerChoiceLabel: UILabel!
    
    @IBOutlet weak var computerChoiceLabel: UILabel!
    
    
    @IBOutlet weak var resultImage1: UIImageView!
    
    @IBOutlet weak var resultImage2: UIImageView!
    
    
    @IBOutlet weak var okButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        switch numberChosen {
        case 1:
            playerChosenImage.image = UIImage(named: "rockImage")
            playerChoiceLabel.text = "Rock"
        case 2:
            playerChosenImage.image = UIImage(named: "paperImage")
            playerChoiceLabel.text = "Paper"
        case 3:
            playerChosenImage.image = UIImage(named: "scissorsImage")
            playerChoiceLabel.text = "Scissors"
        default:
            break;
        }
        
        let computerChoiceNumber : Int = Int.random(in: 1...3)
        switch computerChoiceNumber {
        case 1:
            computerChosenImage.image = UIImage(named: "rockImage")
            computerChoiceLabel.text = "Rock"
        case 2:
            computerChosenImage.image = UIImage(named: "paperImage")
            computerChoiceLabel.text = "Paper"
        case 3:
            computerChosenImage.image = UIImage(named: "scissorsImage")
            computerChoiceLabel.text = "Scissors"
        default:
            break;
        }
        
        if (numberChosen - computerChoiceNumber == 1 || (numberChosen == 1 && computerChoiceNumber == 3)) {
            resultImage1.isHidden = false
            resultImage1.image = UIImage(named: "checkmark")
            AppDataFile.wins = AppDataFile.wins + 1
            AppDataFile.resultArray.append("Win")
            //playerChoiceLabel.font = UIFont(name:"Hiragino Mincho ProN W3 3-Bold", size: 30.0)
        }
        else if (numberChosen - computerChoiceNumber == -1 || (numberChosen == 3 && computerChoiceNumber == 1)) {
            resultImage2.isHidden = false
            resultImage2.image = UIImage(named: "checkmark")
            AppDataFile.losses += 1
            AppDataFile.resultArray.append("Loss")
            //computerChoiceLabel.font = UIFont(name:"Hiragino Mincho ProN W3 3-Bold", size: 30.0)

        }
        else {
            AppDataFile.draws += 1
            AppDataFile.resultArray.append("Draw")
        }
        
        okButton.isHidden = false
        
        
        
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
