//
//  MainMenuVC.swift
//  MyRestaturant
//
//  Created by Anthony Baldwin on 1/28/19.
//  Copyright © 2019 AnthonyBaldwin. All rights reserved.
//

import UIKit

class MainMenuVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    

    

    
    
    //MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: VARIABLES
    var menuName:Array = [String]()
    
    

    override func viewDidLoad() {
        menuName = ["Home","Restaurant News","Inventory","Recipes","Menu Item Pricer","Email","Calendar","Settings"]
        
        super.viewDidLoad()


    }
    //MARK: Tableview Methods

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CellVC
        cell.cellLabel.text! = menuName[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell: CellVC = tableView.cellForRow(at: indexPath) as! CellVC
        if cell.cellLabel.text! == "Home" {
            let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let desController = mainStoryBoard.instantiateViewController(withIdentifier:"MainVC") as! MainVC
            let newFrontViewController = UINavigationController.init(rootViewController:desController)
            
            revealViewController()?.pushFrontViewController(newFrontViewController, animated: true)
            
        }
    
        if cell.cellLabel.text! == "Restaurant News" {
            let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let desController = mainStoryBoard.instantiateViewController(withIdentifier:"FirstVC") as! FirstVC
            let newFrontViewController = UINavigationController.init(rootViewController:desController)
            
            revealViewController()?.pushFrontViewController(newFrontViewController, animated: true)
    }
        if cell.cellLabel.text! == "Inventory" {
            let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let desController = mainStoryBoard.instantiateViewController(withIdentifier:"InventoryVC") as! InventoryVC
            let newFrontViewController = UINavigationController.init(rootViewController:desController)
            
            revealViewController()?.pushFrontViewController(newFrontViewController, animated: true)
        }
        
        if cell.cellLabel.text! == "Recipes" {
            let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let desController = mainStoryBoard.instantiateViewController(withIdentifier:"RecipeVC") as! RecipeVC
            let newFrontViewController = UINavigationController.init(rootViewController:desController)
            
            revealViewController()?.pushFrontViewController(newFrontViewController, animated: true)
        }
        
        if cell.cellLabel.text! == "Menu Item Pricer" {
            let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let desController = mainStoryBoard.instantiateViewController(withIdentifier:"MenuItemVC") as! MenuItemVC
            let newFrontViewController = UINavigationController.init(rootViewController:desController)
            
            revealViewController()?.pushFrontViewController(newFrontViewController, animated: true)
        }
        
        if cell.cellLabel.text! == "Calendar" {
            let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let desController = mainStoryBoard.instantiateViewController(withIdentifier:"ViewController") as! ViewController
            let newFrontViewController = UINavigationController.init(rootViewController:desController)
            
            revealViewController()?.pushFrontViewController(newFrontViewController, animated: true)
        }
        
        if cell.cellLabel.text! == "Settings" {
            let mainStoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let desController = mainStoryBoard.instantiateViewController(withIdentifier:"SettingsTableViewVC") as! SettingsTableViewVC
            let newFrontViewController = UINavigationController.init(rootViewController:desController)
            
            revealViewController()?.pushFrontViewController(newFrontViewController, animated: true)
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
