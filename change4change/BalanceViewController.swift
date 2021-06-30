//
//  BalanceViewController.swift
//  change4change
//
//  Created by  Scholar on 6/29/21.
//

import UIKit

class BalanceViewController: UIViewController {
    
    let vc = CurrentCharityViewController()
    
    @IBOutlet weak var balance: UILabel!
    
    var labelText = "$20.00"
   // var currentBalance: String?
   // var currentBalance2:String = ""

    override func viewDidLoad() {
       
        super.viewDidLoad()
        balance.text=labelText
        
        /* uncomment this - Erin
        if (currentBalance == "$0.00") { balance.text = currentBalance2 }        // Do any additional setup after loading the view. */
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
