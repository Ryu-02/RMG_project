//
//  WebViewController.swift
//  RMG_project
//
//  Created by 유명규 on 11/28/24.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWebPage("https://www.youtube.com/@Yoiki")

        // Do any additional setup after loading the view.
    }
    private func loadWebPage(_ urlString: String) {
        guard let url = URL(string: urlString) else {
            print("Invalid URL: \(urlString)")
            return
        }
        webView.load(URLRequest(url: url))

    }
}
