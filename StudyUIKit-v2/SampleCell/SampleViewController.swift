//
//  SampleViewController.swift
//  StudyUIKit-v2
//
//  Created by iHRomnik on 20.02.2024.
//

import UIKit

class SampleViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    
    let cities = [
    "01E",
    "02E",
    "03E",
    "04E",
    "05E",
    "06E",
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
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(UINib(nibName: "ExampleTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")

        // Do any additional setup after loading the view.
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

extension SampleViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? ExampleTableViewCell else {return UITableViewCell()}
        
        cell.dataLabel.text = cities[indexPath.row]
        return cell
    }
    
    
}
