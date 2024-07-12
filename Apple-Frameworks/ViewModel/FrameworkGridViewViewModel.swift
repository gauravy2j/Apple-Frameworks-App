//
//  FrameworkGridViewViewModel.swift
//  Apple-Frameworks
//
//  Created by Gaurav Sharma on 07/07/24.
//

import SwiftUI

final class FrameworkGridViewViewModel: ObservableObject{
    
    let columns : [GridItem] = [GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())]
    
    @Published var isShowingDetailView = false
    
}

