//
//  RecipeDetailVC.swift
//  MyRestaturant
//
//  Created by Anthony Baldwin on 2/19/19.
//  Copyright © 2019 AnthonyBaldwin. All rights reserved.
//

import UIKit

class RecipeDetailVC: UIViewController {
    @IBOutlet weak var recipeLabel: UILabel!
    
    @IBOutlet weak var setImage: UIImageView!
    
    @IBOutlet weak var settingsImageButton: UIButton!
    
    @IBOutlet weak var recipeButton: ButtonViews!
    
    @IBOutlet weak var directionsButton: ButtonViews!
    
    @IBOutlet weak var saveButton: ButtonViews!
    
    @IBOutlet weak var recipeTextField: UITextView!
    
    
    @IBOutlet weak var directionsTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func settingsImagePressed(_ sender: Any) {
    }
    
    @IBAction func recipePressed(_ sender: Any) {
    }
    
    @IBAction func directionsPress(_ sender: Any) {
    }
    
    @IBAction func savePressed(_ sender: Any) {
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
