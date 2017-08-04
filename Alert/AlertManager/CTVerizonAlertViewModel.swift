//
//  CTVerizonAlertViewModel.swift
//  contenttransfer
//
//  Created by Kalluri, Krishna on 8/2/17.
//  Copyright © 2017 Verizon Wireless Inc. All rights reserved.
//

import UIKit

@objc public class CTVerizonAlertViewModel: NSObject {
    
    public enum AlertStyle {
        case singleButton
        case doubleButton
        case tripleButton
    }
    
    public var alertStyle: AlertStyle
    public var alertinfoImage: UIImage?
    public var alertbackgroundColor : UIColor?
    public var alertTitle: String?
    public var alertBody: String?
    public var alertPrimaryButtonTitle: String?
    public var alertSecondaryButtonTitle: String?
    public var alertTeritioryButtonTitle: String?
    public var primaryButtonAction:((_ alertVC: CTVerizonAlertViewController) -> Void)?
    public var secondaryButtonAction:((_ alertVC: CTVerizonAlertViewController) -> Void)?
    public var teritioryButtonAction:((_ alertVC: CTVerizonAlertViewController) -> Void)?
    
    required public init(alertStyle: AlertStyle, alertinfoImage: UIImage? = nil,alertTitle: String?, alertBody: String? = nil, alertPrimaryButtonTitle: String?, primaryButtonAction:@escaping ((_ alertVC: CTVerizonAlertViewController) -> Void),alertSecondaryButtonTitle: String? = nil, secondaryButtonAction: @escaping ((_ alertVC: CTVerizonAlertViewController) -> Void),alertTeritioryButtonTitle: String? = nil, teritioryButtonAction :@escaping ((_ alertVC: CTVerizonAlertViewController) -> Void)) {
        self.alertStyle = alertStyle
        self.alertTitle = alertTitle
        self.alertBody = alertBody
        self.alertPrimaryButtonTitle = alertPrimaryButtonTitle
        self.alertSecondaryButtonTitle = alertSecondaryButtonTitle
        self.alertTeritioryButtonTitle = alertTeritioryButtonTitle
        self.alertinfoImage = alertinfoImage
        self.primaryButtonAction = primaryButtonAction
        self.secondaryButtonAction = secondaryButtonAction
        self.teritioryButtonAction = teritioryButtonAction
    }
}
