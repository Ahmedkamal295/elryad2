//
//  ViewController.swift
//  Elryad.com
//
//  Created by Ahmed on 10/22/19.
//  Copyright © 2019 Ahmed. All rights reserved.
//

import UIKit
import WebKit
import SVProgressHUD
extension UIView {
    @IBInspectable var corner:CGFloat {
        set{
            layer.cornerRadius = newValue
        }
        
        get{
            return layer.cornerRadius
        }
    }
    
    @IBInspectable var border_width:CGFloat {
        set{
            layer.borderWidth = newValue
        }
        
        get{
            return layer.borderWidth
        }
    }
    
    @IBInspectable var border_color:UIColor? {
        set {
            if let color = newValue {
                layer.borderColor = color.cgColor
            } else {
                layer.borderColor = nil
            }
        }
        get{
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
    }
    
    
}
class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    var menu_vc : MenuVC!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SVProgressHUD.show()
        SVProgressHUD.dismiss(withDelay: 3.0)
        SVProgressHUD.setBackgroundColor(UIColor.lightGray)
        
        navigationController?.navigationBar.prefersLargeTitles = true
         let myURL = URL(string:"https://elryad.com")
        
        //
        //let myURL = URL(string:"https://elryad.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
        menu_vc = self.storyboard?.instantiateViewController(withIdentifier: "MenuVC") as? MenuVC
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToGsture))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
        NotificationCenter.default.addObserver(self, selector: #selector(close_on_swipe), name: NSNotification.Name("CloseMenu"), object: nil)
    }

    @IBAction func btnBack(_ sender: Any) {
        if webView.canGoBack {
            webView.goBack()
        }
    }
    
    @IBAction func btnMenu(_ sender: Any) {
        if AppDelegate.menu_bool {
            show_menu()
            
        } else {
            close_menu()
        }
    }
    
    @objc func respondToGsture(gesture : UISwipeGestureRecognizer) {
        switch gesture.direction {
        case UISwipeGestureRecognizer.Direction.right:
            close_on_swipe()
        default:
            break
        }
    }
    
    @objc func close_on_swipe() {
        close_menu()
    }
    
    func show_menu() {
        UIView.animate(withDuration: 0.5) { () -> Void in
            self.menu_vc.view.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
            self.menu_vc.view.backgroundColor = UIColor.black.withAlphaComponent(0.0)
            self.addChild(self.menu_vc)
            self.view.addSubview(self.menu_vc.view)
            //self.btnMenu(self.menu_vc.view.rightAnchor)
            AppDelegate.menu_bool = false
        }
    }
    
    @objc func close_menu() {
        UIView.animate(withDuration: 0.5, animations: { () -> Void in
            // slide menu right used the code UIScreen....
            // slide menu left used the code -UIScreen...
            self.menu_vc.view.frame = CGRect(x: UIScreen.main.bounds.size.width, y: 0, width: UIScreen.main.bounds.size.width, height:
                UIScreen.main.bounds.size.height)}) { (finished) in
                    self.menu_vc.view.removeFromSuperview()}
        AppDelegate.menu_bool = true
    }
}
