//
//  ViewController.swift
//  RockPaperScissors3
//
//  Created by Avnish Khandeshi on 12/3/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var battleLogTableview: UITableView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        battleLogTableview.delegate = self
        battleLogTableview.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        battleLogTableview.reloadData()
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (AppDataFile.resultArray.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let eachCell = battleLogTableview.dequeueReusableCell(withIdentifier: "battleLogCell", for: indexPath)
        eachCell.textLabel?.text = "Battle #\(indexPath.row+1)"
        eachCell.detailTextLabel?.text = "\(AppDataFile.resultArray[indexPath.row])"
        return eachCell
    }


}

