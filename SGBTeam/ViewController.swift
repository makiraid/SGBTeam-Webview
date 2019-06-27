//
//  ViewController.swift
//  SGBTeam
//
//  Created by Payment Development on 28/06/19.
//  Copyright © 2019 SGB Team. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    
    
    let webView: WKWebView = {
        let view = WKWebView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.sgb.or.id/appversion/")
        let myWebsite = URLRequest(url: url!)
        
        webView.load(myWebsite)
        
        view.addSubview(webView)
        setupWebViewScreen()
    }
    func setupWebViewScreen(){
        webView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        webView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        webView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        webView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
    }
    
    
}
