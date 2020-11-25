//
//  SignUpVC.swift
//  teampang
//
//  Created by 선민승 on 2020/11/25.
//

import UIKit

class SignUpVC: UIViewController, UITextFieldDelegate {

    @IBOutlet var fieldWidth01: NSLayoutConstraint!
    @IBOutlet var fieldWidth02: NSLayoutConstraint!
    @IBOutlet var fieldWidth03: NSLayoutConstraint!
    @IBOutlet var fieldWidth04: NSLayoutConstraint!
    @IBOutlet var signupButtonWidth: NSLayoutConstraint!
    
    @IBOutlet var spacing01: NSLayoutConstraint!
    @IBOutlet var spacing02: NSLayoutConstraint!
    @IBOutlet var spacing03: NSLayoutConstraint!
    
    @IBOutlet var spacing04: NSLayoutConstraint!
    @IBOutlet var spacing05: NSLayoutConstraint!
    
    @IBOutlet var pwCheckTextField: PwCheckTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
        autoLayoutFunc()
       
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        keyboardFunc()
    }
    func setLayout() {
        self.navigationController?.navigationBar.topItem?.title = ""
        self.navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.barTintColor = UIColor.init(red: 41/255, green: 157/255, blue: 243/255, alpha: 1)
        self.title = "회원가입"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    func autoLayoutFunc() {
        let screenHeight = UIScreen.main.bounds.height
        let autoLayoutWidth = 45/896*screenHeight
        self.fieldWidth01.constant = autoLayoutWidth
        self.fieldWidth02.constant = autoLayoutWidth
        self.fieldWidth03.constant = autoLayoutWidth
        self.fieldWidth04.constant = autoLayoutWidth
        self.signupButtonWidth.constant = autoLayoutWidth
        self.spacing01.constant = 50/896*screenHeight
        self.spacing02.constant = 25/896*screenHeight
        self.spacing03.constant = 25/896*screenHeight
        self.spacing04.constant = 25/896*screenHeight
        self.spacing05.constant = 50/896*screenHeight
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        pwCheckTextField.resignFirstResponder()
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
        pwCheckTextField.delegate = self
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

}
