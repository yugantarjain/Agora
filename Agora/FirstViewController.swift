//
//  FirstViewController.swift
//  Agora
//
//  Created by Yugantar Jain on 15/03/20.
//  Copyright © 2020 Yugantar Jain. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let titles = ["Agora UI Design", "Grand Grammy Election", "Class elections"]
    let descriptions = ["To elect the best design for the Agora mobile app\nEnds Tomorrow at 3:00 pm", "The biggest user election to decide the best album of 2019", "Elections to choose the class representative"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Voting Invitations"
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(indexPath.row), for: indexPath)
        
        cell.textLabel?.text = titles[indexPath.row]
        cell.detailTextLabel?.text = descriptions[indexPath.row]
        
        return cell
    }
    

    @IBOutlet var outlets: [UIView]!
    @IBOutlet weak var table: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        table.delegate = self
        table.dataSource = self
        
        for v in outlets {
            v.layer.cornerRadius = 10
        }
    }


}

