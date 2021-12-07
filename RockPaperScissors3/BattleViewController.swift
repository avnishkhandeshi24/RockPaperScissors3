//
//  BattleViewController.swift
//  RockPaperScissors3
//
//  Created by Avnish Khandeshi on 12/3/21.
//

import UIKit
import CoreLocation

class BattleViewController: UIViewController {
    
    var clickedArray : [Bool] = [false, false, false]
    
    
    @IBOutlet weak var rockImage: UIImageView!
    
    @IBOutlet weak var paperImage: UIImageView!
    
    @IBOutlet weak var scissorsImage: UIImageView!
    
    
    
    @IBOutlet weak var finalizeButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        finalizeButton.layer.cornerRadius = 7
        finalizeButton.isSelected = true
        finalizeButton.isEnabled = false
    }
    
    @IBAction func rockImageClicked(_ sender: UITapGestureRecognizer) {
        
        if (clickedArray[0] == false) {
            clickedArray[0] = true
            clickedArray[1] = false
            clickedArray[2] = false
            rockImage.layer.borderWidth = 5
            rockImage.layer.borderColor = UIColor.blue.cgColor
            paperImage.layer.borderColor = UIColor.systemBackground.cgColor
            paperImage.layer.borderWidth = 0
            scissorsImage.layer.borderColor = UIColor.systemBackground.cgColor
            scissorsImage.layer.borderWidth = 0
            finalizeButton.isEnabled = true
            finalizeButton.isSelected = false
        }
        
        else {
            clickedArray[0] = false
            rockImage.layer.borderWidth = 0
            rockImage.layer.borderColor = UIColor.systemBackground.cgColor
            finalizeButton.isSelected = true
            finalizeButton.isEnabled = false
        }
        
    }
    
    @IBAction func paperImageClicked(_ sender: UITapGestureRecognizer) {
        
        if (clickedArray[1] == false) {
            clickedArray[1] = true
            clickedArray[0] = false
            clickedArray[2] = false
            paperImage.layer.borderWidth = 5
            paperImage.layer.borderColor = UIColor.blue.cgColor
            rockImage.layer.borderColor = UIColor.systemBackground.cgColor
            rockImage.layer.borderWidth = 0
            scissorsImage.layer.borderColor = UIColor.systemBackground.cgColor
            scissorsImage.layer.borderWidth = 0
            finalizeButton.isEnabled = true
            finalizeButton.isSelected = false
        }
        
        else {
            clickedArray[1] = false
            paperImage.layer.borderWidth = 0
            paperImage.layer.borderColor = UIColor.systemBackground.cgColor
            finalizeButton.isSelected = true
            finalizeButton.isEnabled = false
        }
        
        
        
    }
    
    
    @IBAction func scissorsImageClicked(_ sender: UITapGestureRecognizer) {
        
        if (clickedArray[2] == false) {
            clickedArray[2] = true
            clickedArray[0] = false
            clickedArray[1] = false
            scissorsImage.layer.borderWidth = 5
            scissorsImage.layer.borderColor = UIColor.blue.cgColor
            rockImage.layer.borderColor = UIColor.systemBackground.cgColor
            rockImage.layer.borderWidth = 0
            paperImage.layer.borderColor = UIColor.systemBackground.cgColor
            paperImage.layer.borderWidth = 0
            finalizeButton.isEnabled = true
            finalizeButton.isSelected = false
        }
        
        else {
            clickedArray[2] = false
            scissorsImage.layer.borderWidth = 0
            scissorsImage.layer.borderColor = UIColor.systemBackground.cgColor
            finalizeButton.isSelected = true
            finalizeButton.isEnabled = false
        }
        
    }
    
    @IBAction func finalizeClicked(_ sender: UIButton) {
        
        performSegue(withIdentifier: "toBattleResultSegue", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let numChosen : Int
        let nvc = segue.destination as! BattleResultViewController
        if (clickedArray[0]) {
            numChosen = 1
        }
        else if (clickedArray[1]) {
            numChosen = 2
        }
        else if clickedArray[2] {
            numChosen = 3
        }
        else {
            numChosen = 0
        }
        nvc.numberChosen = numChosen
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
