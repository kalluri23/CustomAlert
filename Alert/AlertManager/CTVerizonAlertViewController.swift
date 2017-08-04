//
//  CTVerizonAlertViewController.swift
//  contenttransfer
//
//  Created by Kalluri, Krishna on 8/2/17.
//  Copyright © 2017 Verizon Wireless Inc. All rights reserved.
//

import UIKit

@objc public class CTVerizonAlertViewController: UIViewController {

    @IBOutlet weak var alertBackgroundView: UIView!
    @IBOutlet weak var alertinfoImageView: UIImageView!
    @IBOutlet weak var alertTitleLabel: UILabel!
    @IBOutlet weak var alertBodyLabel: UILabel!
    @IBOutlet weak var alertButtonContainerView: UIView!
    @IBOutlet weak var primaryButton: CTAlertButton!
    @IBOutlet weak var secondaryButton: CTAlertButton!
    @IBOutlet weak var teritioryButton: CTAlertButton!
    
    //Constraint Outlets

    @IBOutlet weak var prBtLeadingSpaceConstraint: NSLayoutConstraint!
    @IBOutlet weak var hSpacingBwPrSecBtn: NSLayoutConstraint!
    @IBOutlet weak var hSpacingBwSecTrBtn: NSLayoutConstraint!
    @IBOutlet weak var prBtnCenterXConstraint: NSLayoutConstraint!
    @IBOutlet weak var secBtnEqualWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var trBtnEqualWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var prBtnTrialingSpaceAlignmentConstraint: NSLayoutConstraint!
    @IBOutlet weak var secBtnLeadingSpaceAlignmentConstraint: NSLayoutConstraint!
    
    public var alertModel: CTVerizonAlertViewModel
    
    required public init(alertModel: CTVerizonAlertViewModel) {
        self.alertModel = alertModel
        super.init(nibName: "CTVerizonAlertViewController", bundle: Bundle.main)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.clear
        self.alertinfoImageView.image = self.alertModel.alertinfoImage
        self.alertTitleLabel.text = self.alertModel.alertTitle
        self.alertBodyLabel.text = self.alertModel.alertBody
        self.primaryButton.setTitle(self.alertModel.alertPrimaryButtonTitle, for: .normal)
        self.primaryButton.addTarget(self, action: #selector(handlePrimaryButtonTapped), for: UIControlEvents.touchUpInside)
        self.secondaryButton.setTitle(self.alertModel.alertSecondaryButtonTitle, for: .normal)
        self.secondaryButton.addTarget(self, action: #selector(handleSecondaryButtonTapped), for: UIControlEvents.touchUpInside)
        self.teritioryButton.setTitle(self.alertModel.alertTeritioryButtonTitle, for: .normal)
        self.teritioryButton.addTarget(self, action: #selector(handleTeritioryButtonTapped), for: UIControlEvents.touchUpInside)
        switch self.alertModel.alertStyle {
        case .singleButton:
            self.prBtLeadingSpaceConstraint.priority = 1.0
            self.hSpacingBwPrSecBtn.priority = 1.0
            self.hSpacingBwSecTrBtn.priority = 1.0
            self.prBtnCenterXConstraint.priority = 999.0
            self.secondaryButton.isHidden = true
            self.teritioryButton.isHidden = true
            self.secBtnEqualWidthConstraint.priority = 1.0
            self.trBtnEqualWidthConstraint.priority = 1.0
        case .doubleButton:
            self.hSpacingBwPrSecBtn.constant = 10.0
            self.teritioryButton.isHidden = true
            self.hSpacingBwSecTrBtn.isActive = false
            self.prBtLeadingSpaceConstraint.isActive = false
            self.trBtnEqualWidthConstraint.priority = 1.0
            self.prBtnTrialingSpaceAlignmentConstraint.priority = 999.0
            self.secBtnLeadingSpaceAlignmentConstraint.priority = 999.0
            self.prBtLeadingSpaceConstraint = NSLayoutConstraint(item: self.primaryButton, attribute: .leading, relatedBy: .greaterThanOrEqual, toItem: self.alertButtonContainerView, attribute: .leading, multiplier: 1.0, constant: 10.0)
            self.hSpacingBwSecTrBtn = NSLayoutConstraint(item: self.secondaryButton, attribute: .trailing, relatedBy: .greaterThanOrEqual, toItem: self.teritioryButton, attribute: .leading, multiplier: 1.0, constant: 0.0)
            self.hSpacingBwSecTrBtn.isActive = true
            self.prBtLeadingSpaceConstraint.isActive = true
        case .tripleButton:
            self.hSpacingBwPrSecBtn.constant = 10.0
            self.hSpacingBwSecTrBtn.constant = 10.0
        }
        // Do any additional setup after loading the view.
    }
    
    override public func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.primaryButton.insetStyle = self.alertModel.alertStyle
        self.secondaryButton.insetStyle = self.alertModel.alertStyle
        self.teritioryButton.insetStyle = self.alertModel.alertStyle
        //Adjust the frame and position of buttons inside the alert
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func handlePrimaryButtonTapped(_ sender: UIButton){
        if self.alertModel.primaryButtonAction != nil {
            self.alertModel.primaryButtonAction!(self)
        }
    }
    
    func handleSecondaryButtonTapped(_ sender: UIButton){
        if self.alertModel.secondaryButtonAction != nil {
            self.alertModel.secondaryButtonAction!(self)
        }
    }
    
    func handleTeritioryButtonTapped(_ sender: UIButton){
        if self.alertModel.teritioryButtonAction != nil {
            self.alertModel.teritioryButtonAction!(self)
        }
    }

}
