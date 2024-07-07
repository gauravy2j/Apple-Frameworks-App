//
//  SafariView.swift
//  Apple-Frameworks
//
//  Created by Gaurav Sharma on 07/07/24.
//

import SwiftUI
import SafariServices

struct SafariView:UIViewControllerRepresentable{
    
    var url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) ->  SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
    
}
