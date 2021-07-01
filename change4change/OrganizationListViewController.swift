//
//  OrganizationListViewController.swift
//  change4change
//
//  Created by  Scholar on 6/29/21.
//

import UIKit

class OrganizationListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //REPLACE PLACEHOLDERS WITH ACTUAL CHARITY NAMES
    let organizationNames = ["Doctors Without Borders", "Human Rights Watch", "Room to Read", "Conservation International", "The Bail Project", "Save the Children", "GiveDirectly", "Water.org", "Educate!","Loveland Foundation","The Trevor Project"]
    
    let organizationDescriptions = ["An independent, global movement providing medical aid where it’s needed most.", "An independent, international organization that defends the rights of people worldwide", "Creating a future in which all the world's children can pursue a quality education", "Because saving nature is the only way to save ourselves", "Combatting mass incarceration by disrupting the money bail system—one person at a time", "Giving the world's children a healthy start, an opportunity to learn, and protection from harm", "Offers a simple approach to addressing poverty: cut out intermediaries and allow poor families to decide for themselves what they need most.", "Provides safe water and sanitation solutions that give communities health, hope, and a future","Preparing youth in Africa with the skills to succeed in today's economy","A non-profit that helps communities of color, especially women and girls, in need of mental health support.", "A  nonprofit organization 8 focused on suicide prevention efforts among lesbian, gay, bisexual, transgender, queer, and questioning (LGBTQ) youth."]
    
    var images: [UIImage] = [
            UIImage.init(named: "doctor")!,
            UIImage.init(named: "human")!,
            UIImage.init(named: "read")!,
            UIImage.init(named: "conservation")!,
            UIImage.init(named: "bail")!,
            UIImage.init(named: "children")!,
            UIImage.init(named: "give")!,
            UIImage.init(named: "water")!,
            UIImage.init(named: "education")!,
            UIImage.init(named: "love")!,
            UIImage.init(named: "trevor")!,
        ]
    
    override func viewDidLoad() {
            super.viewDidLoad()
            self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg1")!)
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
        cell.OrgImageView.image = images[indexPath.row]
        cell.descriptionLabel.text=organizationDescriptions[indexPath.row]
        cell.selectButton.tag=indexPath.row
        cell.selectButton.addTarget(self, action: #selector(rowButtonWasTapped(sender:)), for: .touchUpInside)
        //cell.OrgImageView.image=UIImage(named: "String")
        
        return cell
    }
    
    var selectedOrg = "None"
    @objc
    
    func rowButtonWasTapped(sender:UIButton) -> String{
        let rowIndex:Int=sender.tag
        print(rowIndex)
        selectedOrg = organizationNames[rowIndex]
        return selectedOrg
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "setOrg" {
            let destinationController=segue.destination as! CurrentCharityViewController
            destinationController.orgName=selectedOrg
          
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
