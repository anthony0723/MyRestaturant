//
//  MeterialViews.swift
//  MyRestaturant
//
//  Created by Anthony Baldwin on 1/29/19.
//  Copyright © 2019 AnthonyBaldwin. All rights reserved.
//

import Foundation

private var materialKey = false

extension UIView {
    
    @IBInspectable var merterialDesign: Bool {
        
        get {
            return materialKey
            
        }
        
        set{
            
            materialKey = newValue
            
            if materialKey
                
            {
                self.layer.masksToBounds = false
                self.layer.cornerRadius = 0.5
                self.layer.shadowOpacity = 0.5
                self.layer.shadowRadius = 3.0
                self.layer.shadowOffset = CGSize(width: 5.0, height: 4.0)
                self.layer.shadowColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1.0).cgColor
                
            }else{
                self.layer.cornerRadius = 0
                self.layer.shadowOpacity = 0
                self.layer.shadowRadius = 0
                self.layer.shadowColor = nil
            }
        }
    }
    
}
