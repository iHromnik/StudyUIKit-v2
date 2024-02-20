//
//  CitiesTableViewController.swift
//  StudyUIKit-v2
//
//  Created by iHRomnik on 19.02.2024.
//

import UIKit

private let reuseIdentifier = "Cell"

class CitiesTableViewController: UITableViewController {
    
    let europCities = [
    "01E",
    "02E",
    "03E",
    "04E",
    "05E",
    "06E"
    
    ]
    let asiaCities = [
    "01we",
    "02qw",
    "03qw",
    "04qe",
    "05qwe",
    "06qwe",
    "07qwe",
    "08we",
    "09qwe",
    "10we",
    "11qe",
    "12qe",
    "13qe",
    "14qe",
    "15qe",
    "16qe"
    ]
    
    
    let cityContinent = [
    "Europ",
    "Asia"
    ]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return cityContinent.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section {
        case 0: return europCities.count
        case 1: return asiaCities.count
        default:
            return 0
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard  let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? CitiesTableViewCell else { return UITableViewCell()}

        switch indexPath.section {
        case 0:
            cell.cityLabel.text = europCities[indexPath.row]
            return cell
        case 1:
            cell.cityLabel.text = asiaCities[indexPath.row]
            return cell
          
        default:
            return UITableViewCell()
            
        }
       
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return cityContinent[section]
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "\(cityContinent[section]) + Fotter"
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
