//
//  OrganizationListViewController.swift
//  change4change
//
//  Created by  Scholar on 6/29/21.
//

import UIKit

class OrganizationListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //REPLACE PLACEHOLDERS WITH ACTUAL CHARITY NAMES
    let organizationNames = ["name1", "name2", "name3"]
    
    let organizationDescriptions = ["description1", "description2", "desription 3"]
    
    override func viewDidLoad() {
            super.viewDidLoad()

            // Do any additional setup after loading the view.
        }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0 // must be float but returns cell height (each cell will be 100 px)
    }
    
    //tells us how many rows are in the section
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return organizationNames.count //puts in numbers of rows of organizations available
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomTableViewCell
        
        cell.mainLabel.text = organizationNames[indexPath.row]
        cell.descriptionLabel.text=organizationDescriptions[indexPath.row]
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
