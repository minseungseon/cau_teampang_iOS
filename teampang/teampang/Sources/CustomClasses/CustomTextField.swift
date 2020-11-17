//
//  CustomTextField.swift
//  teampang
//
//  Created by 선민승 on 2020/11/18.
//

import UIKit

class CustomTextField: UITextField {

    
}

class PrimaryTextField: UITextField {

    //storyboard initialization
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
        
        self.placeholder = "아이디"
        
    }
}
