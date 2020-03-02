//
//  LoginText.swift
//  Subscriptions
//
//  Created by Benjamin Simpson on 3/1/20.
//  Copyright © 2020 Benjamin Simpson. All rights reserved.
//

import Foundation
import UIKit

class LoginText: UITextField {
    
    let bottomLine = UIView()
    let padding = UIEdgeInsets(top: 0, left: 5, bottom: 5, right: 5)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    required init(placeholder: String) {
        super.init(frame: .zero)
        self.placeholder = placeholder
        self.setup()
    }
    
    func setup() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.tintColor = UIColor.purple
        self.font = UIFont(name: "Copperplate", size: 15)
        self.textAlignment = .left
        self.textColor = UIColor.purple
        self.autocapitalizationType = .none
        self.attributedPlaceholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedString.Key.foregroundColor:#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)])
        bottomLine.backgroundColor = UIColor.white
        self.borderStyle = UITextField.BorderStyle.none
        self.addSubview(bottomLine)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        bottomLine.frame = CGRect(x: 0, y: self.frame.height - 1, width: self.frame.width, height: 1)
    }
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
}

