//
//  HelloViewViewController.swift
//  StudyUIKit-v2
//
//  Created by iHRomnik on 18.03.2024.
//

import UIKit

class HelloViewViewController: UIViewController {

    @IBOutlet weak var helloView: HelloView!
    override func viewDidLoad() {
        super.viewDidLoad()

        helloView.text = "privet"
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
