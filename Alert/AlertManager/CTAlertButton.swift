//
//  CTAlertButton.swift
//  Alert
//
//  Created by Kalluri, Krishna on 8/3/17.
//  Copyright © 2017 verizonwireless. All rights reserved.
//

import UIKit

public class CTAlertButton: UIButton {
    
    public var insetStyle: CTVerizonAlertViewModel.AlertStyle = .singleButton
    
    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.style()
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.style()
    }
    
    public func style() {
        self.titleLabel!.font = UIFont.boldSystemFont(ofSize: 16.0)
        self.setTitleColor(UIColor.black, for: .normal)
        self.backgroundColor = UIColor.gray.withAlphaComponent(0.1)
        self.layer.borderColor = UIColor.red.cgColor
        self.layer.borderWidth = 1.0
        self.layer.cornerRadius = 10.0
        switch self.insetStyle {
        case .singleButton:
            self.contentEdgeInsets = UIEdgeInsetsMake(1, 15, 1, 15)
        case .doubleButton:
            self.contentEdgeInsets = UIEdgeInsetsMake(1, 10, 1, 10)
        case .tripleButton:
            self.contentEdgeInsets = UIEdgeInsetsMake(1, 5, 1, 5)
        }
        self.titleLabel?.numberOfLines = 0
        self.titleLabel?.textAlignment = .center
        self.titleLabel?.lineBreakMode = .byWordWrapping
    }

}
