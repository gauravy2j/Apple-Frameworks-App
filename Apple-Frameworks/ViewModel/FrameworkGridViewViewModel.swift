//
//  FrameworkGridViewViewModel.swift
//  Apple-Frameworks
//
//  Created by Gaurav Sharma on 07/07/24.
//

import SwiftUI

final class FrameworkGridViewViewModel: ObservableObject{
    
    var selectedFramework : Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
    
}

