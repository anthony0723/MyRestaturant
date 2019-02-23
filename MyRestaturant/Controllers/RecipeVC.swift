//
//  RecipeVC.swift
//  MyRestaturant
//
//  Created by Anthony Baldwin on 1/29/19.
//  Copyright © 2019 AnthonyBaldwin. All rights reserved.
//

import UIKit
import CoreData

class RecipeVC: UIViewController,UITableViewDelegate,UITableViewDataSource, UISearchBarDelegate,NSFetchedResultsControllerDelegate{

    var myRecipes: [Recipes] = []
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet var r_TableView: UITableView!
    @IBOutlet weak var searchBar: UITableView!
    
    
    
    //     FetchRequest
    func fetchRequest() -> NSFetchRequest<NSFetchRequestResult> {
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Recipes")
        
        let sorter = NSSortDescriptor(key: "recipeitem", ascending: true)
        
        fetchRequest.sortDescriptors = [sorter]
        
        return fetchRequest
    }
    
    
    override func viewDidLoad() {
        r_TableView.delegate = self
        r_TableView.dataSource = self
        
        super.viewDidLoad()
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        menuButton.target = revealViewController()
        menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
        
        r_TableView.reloadData()
        
        
        func viewDidAppear(_ animated: Bool) {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Recipes")
            
            do{
                myRecipes = try context.fetch(fetchRequest) as! [Recipes]
            }
            catch {
                print("Error")
            }
            
            self.r_TableView.reloadData()
        }
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return myRecipes.count
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myRecipes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = r_TableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RecipeCellVC
        let items = myRecipes[indexPath.row]
        cell.rName?.text = items.value(forKey: "recipeitems") as? String
        
        return cell
    }
    func loadItems() {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let request : NSFetchRequest<Recipes> = Recipes.fetchRequest()
        do{
            myRecipes = try context.fetch(request)
        }catch {
            print("Error Fetching")
        }
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText != ""{
            let predicate = NSPredicate(format: "recipeitems contains[cd] '\(searchText)'")
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Title")
            fetchRequest.predicate = predicate
            
            do{
                myRecipes = try context.fetch(fetchRequest) as! [Recipes]
            }
            catch {
                print("Error")
            }
        }
        else {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Title")
            
            do{
                myRecipes = try context.fetch(fetchRequest) as! [Recipes]
            }
            catch {
                print("Error")
            }
            
        }
        r_TableView.reloadData()
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

