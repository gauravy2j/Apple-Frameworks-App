//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by Gaurav Sharma on 30/06/24.
//

import SwiftUI

struct DetailView: View {
    
    var framework: Framework
    
    var body: some View {
        VStack{
            
            Spacer()
        
           FrameworkTitleView(framework: Framework(name: "ARKit",
                                                   imageName: "arkit",
                                                   urlString: "",
                                                   description: ""))
            
            Text("ARKit 4 introduces a brand-new Depth API, creating a new way to access the detailed depth information gathered by the LiDAR Scanner on iPhone 12 Pro, iPhone 12 Pro Max, and iPad Pro.\n\nLocation Anchors leverages the higher-resolution data in Apple Maps to place AR experiences at a specific point in the world in your iPhone and iPad apps. And support for face tracking extends to all devices with the Apple Neural Engine and a front-facing camera, so even more users can experience the joy of AR in photos and videos.")
                .font(.title3)
                .padding()
            
           Spacer()
           AppButton(title: "Learn More")
                .padding(.bottom)
        }
    }
}

#Preview {
    DetailView(framework: Framework(name: "", imageName: "", urlString: "", description: ""))
}
