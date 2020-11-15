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
        self.backgroundColor = UIColor(red: 255/255, green: 132/255, blue: 102/255, alpha: 1)
        self.tintColor = UIColor.white

    }
    
}
