//
//  InputFieldView.swift
//  AF-FinalProject
//
//  Created by Austin Fierst on 4/25/24.
//

import SwiftUI

struct InputFieldView: View {
    @Binding var data: String
    var title: String?
    
    var body: some View {
        ZStack {
            TextField("", text: $data)
                .padding(.horizontal, 10)
                .frame(height: 42)
                .overlay(
                    RoundedRectangle(cornerSize: CGSize(width: 4, height: 4))
                        .stroke(.gray, lineWidth: 1)
                )
            HStack {
                Text(title ?? "Input")
                    .font(.headline)
                    .fontWeight(.thin)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                    .padding(4)
                    .background(.white)
                Spacer()
            }
            .padding(.leading, 8)
            .offset(CGSize(width: 0, height: -20))
        }
        .padding(4)
    }
}

struct InputFieldView_Previews: PreviewProvider {
    @State static var data: String = ""
    
    static var previews: some View {
        InputFieldView(data: $data, title: "Username")
    }
}
