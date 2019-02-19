//
//  FirstVC.swift
//  MyRestaturant
//
//  Created by Anthony Baldwin on 1/28/19.
//  Copyright © 2019 AnthonyBaldwin. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    @IBOutlet var newsSelector: UISegmentedControl!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        menuButton.target = revealViewController()
        menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
    }
    
    @IBAction func newsButtonTapped(_ sender: Any) {
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
