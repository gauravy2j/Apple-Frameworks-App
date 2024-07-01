//
//  AppButton.swift
//  Apple-Frameworks
//
//  Created by Gaurav Sharma on 30/06/24.
//

import SwiftUI

struct AppButton: View{
    
    var title : String
    
    var body: some View{
        Button(action: {
            
        }, label: {
            Text("\(title)")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .frame(width: 300, height: 50)
                .background(Color.red.gradient)
                .cornerRadius(8)
        })
    }
}
