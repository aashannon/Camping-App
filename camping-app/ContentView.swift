//
//  ContentView.swift
//  camping-app
//
//  Created by james lesperance on 4/25/24.
//

import SwiftUI
import Foundation
import UIKit

struct ContentView: View {
    @State private var isAuthenticated = false
    var body: some View {
//        LoginView(isAuthenicated: $isAuthenticated)
        LocationsList(activeLocation: Location(type: "test", coordinates: "t", equipment: []), active: false)
    }
    
}

#Preview {
    ContentView()
}
