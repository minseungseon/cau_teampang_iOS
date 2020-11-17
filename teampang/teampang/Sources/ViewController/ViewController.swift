//
//  ViewController.swift
//  teampang
//
//  Created by 선민승 on 2020/11/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var icon: UIImageView!
    @IBOutlet var loginButton: UIRoundPrimaryButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()        
       
        
    }
    @IBAction func loginButton(_ sender: UIButton) {
      
        
        guard let loginVC = self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") as? LoginVC
        else{
            return
        }
        
        self.present(loginVC, animated: true, completion: nil)
    }
    
    func assignbackground(){
          let background = UIImage(named: "homeImage")
          var imageView : UIImageView!
          imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
          imageView.clipsToBounds = true
          imageView.image = background
          imageView.center = view.center
          view.addSubview(imageView)
          self.view.sendSubviewToBack(imageView)
          self.icon.image=UIImage(named: "icon")
        
        
    }
    
   
    

}

