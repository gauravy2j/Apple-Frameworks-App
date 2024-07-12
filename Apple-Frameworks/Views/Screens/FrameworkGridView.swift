//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Gaurav Sharma on 30/06/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewViewModel()
    
    var body: some View {
        
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                DetailView(framework: framework)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}

