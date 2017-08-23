//
//  ViewController.swift
//  Alert
//
//  Created by Kalluri, Krishna on 8/3/17.
//  Copyright © 2017 verizonwireless. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showSingleButtonAlert(_ sender: UIButton) {
        
        let alertModel = CTVerizonAlertViewModel(alertStyle: .singleButton, alertinfoImage: UIImage(named: "info"), alertTitle:NSLocalizedString("Content Transfer", comment: "alert title"), alertBody: NSLocalizedString("There are still some app which you have not installed. Do you want to keep them for next time ?", comment: "alert body"), alertPrimaryButtonTitle: NSLocalizedString("Yes", comment: "primary button"), primaryButtonAction: {(alertVC: CTVerizonAlertViewController) in
            CTVerizonAlertManager.dismissVerizonAlert(alertViewController: alertVC)
        }, alertSecondaryButtonTitle: nil, secondaryButtonAction: {(alertVC: CTVerizonAlertViewController) in
            CTVerizonAlertManager.dismissVerizonAlert(alertViewController: alertVC)
        }, alertTeritioryButtonTitle: nil, teritioryButtonAction: {(alertVC: CTVerizonAlertViewController) in
            CTVerizonAlertManager.dismissVerizonAlert(alertViewController: alertVC)
        })
        
        CTVerizonAlertManager.showVerizonAlert(from: self, alertModel: alertModel, completion: {(alertVC: CTVerizonAlertViewController) in
        
        })
    }
    
    @IBAction func showDoubleButtonAlert(_ sender: UIButton) {
        
        let alertModel = CTVerizonAlertViewModel(alertStyle: .doubleButton, alertinfoImage: UIImage(named: "info"), alertTitle: NSLocalizedString("Content Transfer", comment: "alert title"), alertBody: NSLocalizedString("There are still some app which you have not installed. Do you want to keep them for next time ?", comment: "alert body"), alertPrimaryButtonTitle: NSLocalizedString("Yes", comment: "primary button"), primaryButtonAction: {(alertVC: CTVerizonAlertViewController) in
            CTVerizonAlertManager.dismissVerizonAlert(alertViewController: alertVC)
        }, alertSecondaryButtonTitle: NSLocalizedString("Please", comment: "secondary button"), secondaryButtonAction: {(alertVC: CTVerizonAlertViewController) in
            CTVerizonAlertManager.dismissVerizonAlert(alertViewController: alertVC)
        }, alertTeritioryButtonTitle: nil, teritioryButtonAction: {(alertVC: CTVerizonAlertViewController) in
            CTVerizonAlertManager.dismissVerizonAlert(alertViewController: alertVC)
        })
        
        CTVerizonAlertManager.showVerizonAlert(from: self, alertModel: alertModel, completion: {(alertVC: CTVerizonAlertViewController) in
            
        })
    }
    
    @IBAction func showTripleButtonAlert(_ sender: UIButton) {
        
        let alertModel = CTVerizonAlertViewModel(alertStyle: .tripleButton, alertinfoImage: UIImage(named: "info"), alertTitle: "Content Transfer", alertBody: "There are still some app which you have not installed. Do you want to keep them for next time ?", alertPrimaryButtonTitle: NSLocalizedString("Yes", comment: "primary button"), primaryButtonAction: {(alertVC: CTVerizonAlertViewController) in
            CTVerizonAlertManager.dismissVerizonAlert(alertViewController: alertVC)
        }, alertSecondaryButtonTitle: NSLocalizedString("Please", comment: "secondary button"), secondaryButtonAction: {(alertVC: CTVerizonAlertViewController) in
            CTVerizonAlertManager.dismissVerizonAlert(alertViewController: alertVC)
        }, alertTeritioryButtonTitle: NSLocalizedString("Give me", comment: "teritiary button"), teritioryButtonAction: {(alertVC: CTVerizonAlertViewController) in
            CTVerizonAlertManager.dismissVerizonAlert(alertViewController: alertVC)
        })
        
        CTVerizonAlertManager.showVerizonAlert(from: self, alertModel: alertModel, completion: {(alertVC: CTVerizonAlertViewController) in
            
        })
    }

}

