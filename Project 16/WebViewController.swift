//
//  WebViewController.swift
//  Project 16
//
//  Created by Henrique Silva on 10/08/21.
//

import WebKit
import UIKit

class WebViewController: UIViewController {

    @IBOutlet var webView: WKWebView!
    
    var website: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard website != nil else {
            print("Website not set")
            navigationController?.popViewController(animated: true)
            return
        }
        
        if let url = URL(string: website) {
            webView.load(URLRequest(url: url))
        }
    }
}
