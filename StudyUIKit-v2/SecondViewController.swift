//
//  SecondViewController.swift
//  StudyUIKit-v2
//
//  Created by iHRomnik on 06.02.2024.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var labla: UILabel!
    
     var textForeLable: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labla.text = textForeLable

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismisButton(_ sender: Any) {
        dismiss(animated: true)
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
