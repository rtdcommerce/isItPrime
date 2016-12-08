//
//  ViewController.swift
//  isItPrime
//
//  Created by Duncan Hamilton on 2016-12-07.
//  Copyright © 2016 Duncan Hamilton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //properties
    @IBOutlet weak var userText: UITextField!
    @IBOutlet weak var outPutLbl: UILabel!
    
    
    
    @IBAction func primeBtnPressed(_ sender: Any) {
        
        if let userEnteredStrng = userText.text {
            
            let userEnteredInt = Int(userEnteredStrng)
            
            if let number = userEnteredInt {
                
                var isPrime = true
                
                if number == 1 {
                    
                    isPrime = false
                }
                
                var i = 2
                
                while i < number {
                    
                    if number % i == 0 {
                        
                        isPrime = false
                    }
                    
                    i += 1
                }
               
                if isPrime {
                    
                    outPutLbl.text = "\(number) is prime"
                }else {
                    
                    outPutLbl.text = "\(number) is not prime"
                }
            
            
            }else {
                
                
                outPutLbl.text = "Please enter a positive whole number"
            }
        }
        
        
}
}
