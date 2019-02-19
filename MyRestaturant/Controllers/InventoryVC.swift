//
//  InventoryVC.swift
//  MyRestaturant
//
//  Created by Anthony Baldwin on 1/29/19.
//  Copyright © 2019 AnthonyBaldwin. All rights reserved.
//

import UIKit

class InventoryVC: UIViewController {
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    

    override func viewDidLoad() {

        super.viewDidLoad()
        menuButton.target = revealViewController()
        menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
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
