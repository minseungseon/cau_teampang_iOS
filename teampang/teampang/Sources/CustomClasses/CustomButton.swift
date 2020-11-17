//
//  CustomButton.swift
//  teampang
//
//  Created by 선민승 on 2020/11/15.
//

import Foundation

import UIKit

class UIRoundPrimaryButton: UIButton{
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
        self.layer.cornerRadius = 5.0;
        self.backgroundColor = UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.8)
        self.tintColor = UIColor.black
        self.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        self.titleLabel?.adjustsFontSizeToFitWidth = true
//        self.setImage(UIImage(named: "loginButton"), for: .normal)
        self.setTitle("팀프앙으로 로그인", for: .normal)
        self.setTitleColor(UIColor.black, for: .normal)
        
    }
    
}
