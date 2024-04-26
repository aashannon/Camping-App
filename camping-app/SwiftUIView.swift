//
//  SwiftUIView.swift
//  camping-app
//
//  Created by james lesperance on 4/25/24.
//

import SwiftUI

struct SwiftUIView: View {
    @Binding var activeLocation: Location;
    @Binding var active: Bool
    var body: some View {
        Text(activeLocation.type)
        Text(activeLocation.coordinates)
            .onTapGesture {
                active = false;
            }
    }
}

#Preview {
    SwiftUIView(activeLocation: .constant(Location(type: "test", coordinates: "t", equipment: [])), active: .constant(true))
}
