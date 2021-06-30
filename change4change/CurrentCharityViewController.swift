//
//  CurrentCharityViewController.swift
//  change4change
//
//  Created by  Scholar on 6/29/21.
//

import UIKit


class CurrentCharityViewController: UIViewController {
    
    var currentBalance = 20.00
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg7")!)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func donateTapped(_ sender: AnyObject) {
       currentBalance = currentBalance-currentBalance
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            let destinationController=segue.destination as! BalanceViewController
            destinationController.labelText="$\(currentBalance)0"
            
        }
        
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


