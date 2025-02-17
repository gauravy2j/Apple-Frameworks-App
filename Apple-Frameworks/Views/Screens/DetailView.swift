//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by Gaurav Sharma on 30/06/24.
//

import SwiftUI
struct DetailView: View {
    
    var framework: Framework
        @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.callout)
                .padding()
            
           Spacer()
            
            Button(action: {
                isShowingSafariView = true
            }, label: {
                AppButton(title: "Learn More")
                     .padding(.bottom)
            })
          
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
        
    }
}

#Preview {
    DetailView(framework: MockData.sampleFramework)
}
