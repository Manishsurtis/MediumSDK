//
//  File.swift
//  
//
//  Created by Manish on 01/10/22.
//

import Foundation
import UIKit
import WebKit

public class MediumWebView: WKWebView {
    
    public init() {
        let webConfiguration = WKWebViewConfiguration()
        webConfiguration.preferences.javaScriptEnabled = true
        super.init(frame: .zero, configuration: webConfiguration)
        self.scrollView.isScrollEnabled = false
        self.isMultipleTouchEnabled = false
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    @discardableResult
    public func load() -> WKNavigation? {
        if let url = URL(string:"http://google.com") {
            let req = URLRequest(url: url)
            return super.load(req)
        }
        return nil
    }
}
