//
//  RecipeVC.swift
//  MyRestaturant
//
//  Created by Anthony Baldwin on 1/29/19.
//  Copyright © 2019 AnthonyBaldwin. All rights reserved.
//

import UIKit

class RecipeVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var myRecipes = [Recipes]()
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet var r_TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        menuButton.target = revealViewController()
        menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myRecipes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = r_TableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RecipeCellVC
        
        
        return cell
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
