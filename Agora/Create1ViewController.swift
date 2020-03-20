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
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var i = indexPath.row/3
        if indexPath.row == 3 {
            i = 3
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: String(i), for: indexPath)
        cell.textLabel?.text = candidates[indexPath.row]
        return cell
    }
    
    let candidates = ["Erin", "Ankur", "Sam", "|", "Add Candidate"]
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        table.delegate = self
        table.dataSource = self
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
