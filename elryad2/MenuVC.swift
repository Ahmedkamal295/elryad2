//
//  MenuVC.swift
//  Elryad.com
//
//  Created by Ahmed on 10/24/19.
//  Copyright © 2019 Ahmed. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {
    
    @IBOutlet weak var viewMenu: UIView!
    
    @IBOutlet weak var viewR: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewR.layer.cornerRadius = 15
        
        viewMenu.layer.shadowColor = UIColor.black.cgColor
        viewMenu.layer.shadowOpacity = 1.0
        viewMenu.layer.shadowOffset = .zero
        viewMenu.layer.shadowRadius = 2
        viewMenu.layer.shouldRasterize = true
        viewMenu.layer.rasterizationScale = UIScreen.main.scale
        
    }
    
    
    @IBAction func homeButton(_ sender: Any) {
       NotificationCenter.default.post(name: NSNotification.Name("CloseMenu"), object: nil)
        
    }
    
  
    @IBAction func siteButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "siteVC") as? siteVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
   
    
    @IBAction func serversButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "servesVC") as? servesVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
   
    @IBAction func workButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "worksVC") as? worksVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
   
    @IBAction func elmadonaButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "elmadonaVC") as? elmadonaVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
   
    @IBAction func payButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "payMentVC") as? payMentVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func clientButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "clientVC") as? clientVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    
    @IBAction func connectButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "connectVC") as? connectVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
  
    @IBAction func languageButton(_ sender: Any) {
    }
    
   
    
    
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
