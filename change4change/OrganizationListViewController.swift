//
//  OrganizationListViewController.swift
//  change4change
//
//  Created by  Scholar on 6/29/21.
//

import UIKit

class OrganizationListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    override func viewDidLoad() {
            super.viewDidLoad()

            // Do any additional setup after loading the view.
        }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0 // must be float but returns cell height (each cell will be 100 px)
    }
    
    //tells us how many rows are in the section
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 15 //puts in 15 rows for now
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomTableViewCell
        
        cell.mainLabel.text = "Org Name"
        cell.descriptionLabel.text="Org Description"
        cell.selectButton.tag=indexPath.row
        cell.selectButton.addTarget(self, action: #selector(rowButtonWasTapped(sender:)), for: .touchUpInside)
        //cell.OrgImageView.image=UIImage(named: "String")
        
        return cell
    }
    
    @objc
    func rowButtonWasTapped(sender:UIButton){
        let rowIndex:Int=sender.tag
        print(rowIndex)
        
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
