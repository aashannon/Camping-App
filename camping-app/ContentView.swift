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
        if(!isAuthenticated) {
            LoginView(isAuthenicated: $isAuthenticated)
        } else {
             LocationsList(activeLocation: Location(name: "", park: "", state: "", coordinates: [], equipment: []), active: false)
        }
    }

}

#Preview {
    ContentView()
}
