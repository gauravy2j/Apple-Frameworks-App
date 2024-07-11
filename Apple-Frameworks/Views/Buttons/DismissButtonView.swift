//
//  DismissButtonView.swift
//  Apple-Frameworks
//
//  Created by Gaurav Sharma on 11/07/24.
//

import SwiftUI

struct DismissButtonView: View {
    @Binding var isShowingDetailView : Bool
    var body: some View {
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
    }
}

#Preview {
    DismissButtonView(isShowingDetailView: .constant(false))
}
