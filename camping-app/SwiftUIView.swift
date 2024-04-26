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
        Text(activeLocation.name)
        Text(activeLocation.coordinates[0])
            .onTapGesture {
                active = false;
            }
    }
}

#Preview {
    SwiftUIView(activeLocation: .constant(Location(name: "", park: "", state: "", coordinates: [], equipment: [])), active: .constant(true))
}
