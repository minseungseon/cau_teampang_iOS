//
//  LoginVC.swift
//  teampang
//
//  Created by 선민승 on 2020/11/15.
//

import UIKit

class LoginVC: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var pwTextField: PwTextField!
    @IBOutlet var loginButtonWidth: NSLayoutConstraint!
    @IBOutlet var loginTextFieldWidth: NSLayoutConstraint!
    @IBOutlet var pwTextFieldWidth: NSLayoutConstraint!
    @IBOutlet var spacing01: NSLayoutConstraint!
    @IBOutlet var spacing02: NSLayoutConstraint!
    @IBOutlet var findId: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        autoLayoutFunc()
        keyboardFunc()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func signup(_ sender: Any) {
        guard let signUpVC = self.storyboard?.instantiateViewController(withIdentifier: "SignUpVC") as? SignUpVC
        else{
            return
        }
        
        self.navigationController?.pushViewController(signUpVC, animated: true)
    }
    
    func autoLayoutFunc() {
        let screenHeight = UIScreen.main.bounds.height
        let autoLayoutWidth = 45/896*screenHeight
        self.loginButtonWidth.constant = autoLayoutWidth
        self.loginTextFieldWidth.constant = autoLayoutWidth
        self.pwTextFieldWidth.constant = autoLayoutWidth
        self.spacing01.constant = 20/896*screenHeight
        self.spacing02.constant = 35/896*screenHeight
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        pwTextField.resignFirstResponder()
        return true
    }
    
    @objc
    func keyboardWillShow(_ sender: Notification) {
        self.view.frame.origin.y = -150
    }
    @objc
    func keyboardWillHide(_ sender: Notification){
        self.view.frame.origin.y = 0

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
          self.view.endEditing(true)
    }
    
    func keyboardFunc(){
        pwTextField.delegate = self
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

}
