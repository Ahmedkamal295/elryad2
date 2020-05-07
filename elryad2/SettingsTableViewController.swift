//
//  SettingsTableViewController.swift
//  iChatApp
//
//  Created by Ahmed on 8/2/19.
//  Copyright © 2019 Ahmed. All rights reserved.
//

import UIKit
import ProgressHUD

class SettingsTableViewController: UITableViewController {
    
    @IBOutlet weak var imgAvatar: UIImageView!
    @IBOutlet weak var lblVersionNumber: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        
            if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
                lblVersionNumber.text = version
            }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        tableView.tableFooterView = UIView()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 1 {
            return 4
        }
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ""
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIView()
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0
        }
        return 30
    }
    
    @IBAction func btnCleanCache(_ sender: Any) {
        ProgressHUD.showSuccess("تم مسح ذاكرة التخزين المؤقته")
        
    }
    
    @IBAction func btnTellAFriend(_ sender: Any) {
        let text = "Hey! Lets chat on iChatApp \(kAPPURL)"
        let objectsToShare: [Any] = [text]
        let activityViewController = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view
        activityViewController.setValue("Lets chat on iChatApp", forKey: "subject")
        self.present(activityViewController, animated: true, completion: nil)
    }
    @IBAction func mapCompanyButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "mapCompanyVC") as? mapCompanyVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    @IBAction func abouttheCompanyButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "aboutTheCompany") as? aboutTheCompany
        self.navigationController?.pushViewController(vc!, animated: true)
      
    }
    
    @IBAction func btnLogOut(_ sender: Any) {
       
    }
    
    @IBAction func btnDeleteAccount(_ sender: Any) {
      
        
    }
    
    @IBAction func termsAndConditionsButton(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "TermsAndConditionsVC") as? TermsAndConditionsVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    
  
    }

