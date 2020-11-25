//
//  CustomTextField.swift
//  teampang
//
//  Created by 선민승 on 2020/11/18.
//

import UIKit

class CustomTextField: UITextField {

    
}

class nameTextField: UITextField {

    //storyboard initialization
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
        self.placeholder = "이름"
        
    }
}

class IdTextField: UITextField {

    //storyboard initialization
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
        self.placeholder = "아이디"
        
    }
}

class PwTextField: UITextField {

    //storyboard initialization
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
        self.placeholder = "비밀번호"
        
    }
}
class PwCheckTextField: UITextField {

    //storyboard initialization
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
        self.placeholder = "비밀번호 확인"
        
    }
}
