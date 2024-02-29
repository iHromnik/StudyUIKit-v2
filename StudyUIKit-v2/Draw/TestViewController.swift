//
//  TestViewController.swift
//  StudyUIKit-v2
//
//  Created by iHRomnik on 26.02.2024.
//

import UIKit

class TestViewController: UIViewController {

    @IBOutlet weak var greenView: UIView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let testView = TestView(frame: CGRect(x: 100, y: 50, width: 200, height: 200))
//        testView.backgroundColor = .clear
        testView.backgroundColor = .red
//        testView.layer = Gradient
        view.addSubview(testView)
        
        
        greenView.layer.cornerRadius = greenView.bounds.height/2
        greenView.layer.shadowOffset = CGSize(width: 10, height: 10)
        greenView.layer.shadowColor = UIColor.black.cgColor
        greenView.layer.shadowOpacity = 1
        greenView.layer.shadowRadius = 20
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTouchCode))
        tapGesture.numberOfTapsRequired = 2
        greenView.addGestureRecognizer(tapGesture)
        greenView.isUserInteractionEnabled = true
        
    }
    
    @objc func didTouchCode() {
        print(#function)
    }
    
    @IBAction func didTouch(_ sender: UIGestureRecognizer) {
        print(#function)
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
