//
//  ViewController.swift
//  MyRestaturant
//
//  Created by Anthony Baldwin on 1/26/19.
//  Copyright © 2019 AnthonyBaldwin. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var currentDate: UILabel!
    

    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        currentDate.text = DateFormatter.localizedString(from: Date(), dateStyle: DateFormatter.Style.long, timeStyle: DateFormatter.Style.none)
        super.viewDidLoad()
        menuButton.target = revealViewController()
        menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
        
        
        
    }


}

