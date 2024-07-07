//
//  DetailView.swift
//  Apple-Frameworks
//
//  Created by Gaurav Sharma on 30/06/24.
//

import SwiftUI
struct DetailView: View {
    
    var framework: Framework
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack{
            
            HStack {
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 45, height: 45)
                }
            }
            .padding()


            
            Spacer()
        
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.callout)
                .padding()
            
           Spacer()
            
            Button(action: {
                
            }, label: {
                AppButton(title: "Learn More")
                     .padding(.bottom)
            })
          
        }
    }
}

#Preview {
    DetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
