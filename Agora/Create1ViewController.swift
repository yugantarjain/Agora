//
//  Create1ViewController.swift
//  Agora
//
//  Created by Yugantar Jain on 20/03/20.
//  Copyright © 2020 Yugantar Jain. All rights reserved.
//

import UIKit

class Create1ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView.tag == 10 {
            return 3
        } else {
            return 5
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView.tag == 10 {
            var i = indexPath.row + 10
            let cell = tableView.dequeueReusableCell(withIdentifier: String(i), for: indexPath)
            return cell
        }
        var i = indexPath.row/3
        if indexPath.row == 3 {
            i = 3
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: String(i), for: indexPath)
        cell.textLabel?.text = candidates[indexPath.row]
        return cell
    }
    
    let candidates = ["Erin", "Ankur", "Sam", "|", "Add Candidate"]
    @IBOutlet var box: [UITextField]!
    
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var table2: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        table.delegate = self
        table.dataSource = self
        table2.delegate = self
        table2.dataSource = self
        table2.tag = 10
        
        for b in box {
            b.layer.cornerRadius = 6
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
