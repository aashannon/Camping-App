//
//  LoginView.swift
//  AF-FinalProject
//
//  Created by Austin Fierst on 4/25/24.
//
import SwiftUI

struct LoginView: View {
    @State var username = ""
    @State var password = ""
    @Binding var isAuthenicated: Bool
    
    let validUsername = "Bonamy"
    let validPassword = "cs458"
    
    var body: some View {
        VStack {
            Text("Welcome!")
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.bottom, 42)
            VStack(spacing: 16) {
                InputFieldView(data: $username, title: "Username")
                SecureFieldView(data: $password, title: "Password")
            }
            .padding(.bottom, 20)
            
            Button(action: {
                // Simulate login validation
                if username == validUsername && password == validPassword {
                    // Perform action if login is successful
                    self.isAuthenicated = true
                    
                } else {
                   // Perform action if login is unsuccessful
                }
            }) {
                Label("Sign In", systemImage: "arrow.up")
                    .fontWeight(.heavy)
                    .font(.title3)
                    .frame(width: 180)
                    .padding()
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(40)
            }
            .disabled((username != validUsername || password != validPassword))
            
            HStack {
                Spacer()
                Text("Forgot Password?")
                    .fontWeight(.thin)
                    .foregroundColor(.blue)
                    .underline()
                
            }.padding(.top, 16)
        }
        .padding()
    }
}



#Preview {
    LoginView(isAuthenicated: .constant(false))
}
