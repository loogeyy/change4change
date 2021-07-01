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
    @IBOutlet weak var donation: UILabel!
    
    var labelText = "$20.00"
    var donationAmount = "You've donated $0.00 so far!"
    override func viewDidLoad() {
       
        super.viewDidLoad()
        balance.text=labelText
        donation.text=donationAmount
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg1")!)
     
        
        
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
