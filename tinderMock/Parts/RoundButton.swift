//
//  RoundButton.swift
//  tinderMock
//
//  Created by 板垣智也 on 2020/04/26.
//  Copyright © 2020 板垣智也. All rights reserved.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {
    // @IBInspectable make IB enable to use this property
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
}
