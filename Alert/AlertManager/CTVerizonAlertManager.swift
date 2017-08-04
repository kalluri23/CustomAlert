//
//  CTVerizonAlertManager.swift
//  contenttransfer
//
//  Created by Kalluri, Krishna on 8/2/17.
//  Copyright © 2017 Verizon Wireless Inc. All rights reserved.
//

import Foundation
import UIKit
public class CTVerizonAlertManager {
    
    static public func showVerizonAlert(from viewController: UIViewController, alertModel: CTVerizonAlertViewModel, completion: ((_ alertVC: CTVerizonAlertViewController)->())? = nil) {
        
        let alertViewController = CTVerizonAlertViewController(alertModel: alertModel)
        alertModelLogic(alertViewController: alertViewController, from: viewController, alertModel: alertModel, completion: completion)
    }
    
    
    static private func alertModelLogic(alertViewController: CTVerizonAlertViewController, from viewController: UIViewController, alertModel: CTVerizonAlertViewModel, completion: ((_ alertVC: CTVerizonAlertViewController)->())? = nil) {
        
        alertViewController.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        alertViewController.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        alertViewController.view.backgroundColor = UIColor.gray.withAlphaComponent(0.4)
        alertViewController.alertBackgroundView.layer.cornerRadius = 10.0
        alertViewController.alertBackgroundView.layer.borderWidth = 1.0
        alertViewController.alertBackgroundView.layer.borderColor = UIColor.black.cgColor
        alertViewController.alertBackgroundView.clipsToBounds = true
        
        viewController.present(alertViewController, animated: true, completion: {
            completion?(alertViewController)
        })
    }
    
    static public func dismissVerizonAlert(alertViewController: CTVerizonAlertViewController) {
        alertViewController.dismiss(animated: false, completion: nil)
    }
    
}
