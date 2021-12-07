//
//  HomeViewController.swift
//  RockPaperScissors3
//
//  Created by Avnish Khandeshi on 12/3/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var battleButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        battleButton.layer.cornerRadius = 7
    }
    
    
    @IBAction func battleButtonClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "toBattleSegue", sender: nil)
    }
    
    @IBAction func goBackToHome(segue:UIStoryboardSegue) {
        //print("\(AppDataFile.wins)-\(AppDataFile.draws)-\(AppDataFile.losses)")
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
