//
//  StatisticsViewController.swift
//  RockPaperScissors3
//
//  Created by Avnish Khandeshi on 12/3/21.
//

import UIKit

class StatisticsViewController: UIViewController {
    
    
    @IBOutlet weak var recordLabel: UILabel!
    
    
    @IBOutlet weak var winsLabel: UILabel!
    
    @IBOutlet weak var drawsLabel: UILabel!
    

    @IBOutlet weak var lossesLabel: UILabel!
    
    
    @IBOutlet weak var totalGames: UILabel!
    
    @IBOutlet weak var winRate: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //recordLabel.intrinsicContentSize
        recordLabel.text = "\(AppDataFile.wins)-\(AppDataFile.draws)-\(AppDataFile.losses)"
        winsLabel.text = "\(AppDataFile.wins)"
        drawsLabel.text = "\(AppDataFile.draws)"
        lossesLabel.text = "\(AppDataFile.losses)"
        winsLabel.layer.cornerRadius = 5
        drawsLabel.layer.cornerRadius = 5
        lossesLabel.layer.cornerRadius = 5
        totalGames.text = "Total games played: \(AppDataFile.resultArray.count)"
        if (AppDataFile.resultArray.count == 0) {
            winRate.isHidden = true
        }
        else {
            winRate.isHidden = false
            winRate.text = "Win Rate: \(round(Double(AppDataFile.wins)/Double(AppDataFile.resultArray.count)*10000.0)/100.0)%"
        }
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
