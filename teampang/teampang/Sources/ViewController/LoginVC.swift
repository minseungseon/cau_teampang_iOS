//
//  LoginVC.swift
//  teampang
//
//  Created by 선민승 on 2020/11/15.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet var logo: UIImageView!
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var loginButtonWidth: NSLayoutConstraint!
    
    @IBOutlet var findId: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
