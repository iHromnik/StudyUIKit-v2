//
//  ViewController.swift
//  StudyUIKit-v2
//
//  Created by iHRomnik on 06.02.2024.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)

                    NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
                    
                    let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
                    
                    scrollView?.addGestureRecognizer(hideKeyboardGesture)
    }
    
    
  

        @objc func keyboardWillShow(notification: Notification) {
               guard let kbSize = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else {return}
               let insets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.size.height, right: 0.0)
               scrollView.contentInset = insets
           }
           
           @objc func keyboardWillHide(notification: Notification) {
               let insets = UIEdgeInsets.zero
               scrollView.contentInset = insets
           }
           
           @objc func hideKeyboard() {
               self.scrollView?.endEditing(true)
           }
    
    func checkUseCredential() -> Bool {
      return  loginTextField.text == "1" && passwordTextField.text == "1"
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let resalt = checkUseCredential()
        if !resalt {
            showAlert()
        }
        return resalt
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Error", message: "Wrong password", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if  segue.identifier == "to_second_VC" {
          let destination = segue.destination as! SecondViewController
          destination.textForeLable = loginTextField.text
        }
    }
    
    @IBAction func didTapButton(_ sender: UIButton) {
        
//        performSegue(withIdentifier: "to_second_VC", sender: LoginViewController())
        
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let destinationVC = storyBoard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        destinationVC.textForeLable = loginTextField.text
        
        let resalt = checkUseCredential()
        if !resalt {
            showAlert()
        }
        
        present(destinationVC, animated: true)
        
//        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
//        let destinationVC = storyBoard.instantiateViewController(withIdentifier: "SecondViewController")
//        navigationController?.pushViewController(destinationVC, animated: true)
        
    
    }
    
    @IBAction func unwindDegue(segue: UIStoryboardSegue) {
        print("unwendSEGUE")
    }
    
}

