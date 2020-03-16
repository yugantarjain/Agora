//
//  splashViewController.swift
//  Agora
//
//  Created by Yugantar Jain on 16/03/20.
//  Copyright © 2020 Yugantar Jain. All rights reserved.
//

import UIKit

class splashViewController: UIViewController {
    @IBOutlet weak var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        continueButton.layer.cornerRadius = 10
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
