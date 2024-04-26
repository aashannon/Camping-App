//
//  ContentView.swift
//  FinalProject
//
//  Created by Aaron Shannon on 4/25/24.
//

import SwiftUI


struct LocationView: View {
    @Binding var activeLocation: Location
//    @State var isChecked: [Bool]

    let campingEquipment = [
        "Tent",
        "Sleeping bag",
        "Camp stove",
        "Cooking utensils",
        "Flashlight",
        "First aid kit",
        "Water bottle",
        "Hiking boots",
        "Backpack",
        "Camp chairs",
        "Headlamp",
        "Pocket knife",
        "Bug spray",
        "Sunscreen"
    ]
    

    
//    @State private var isChecked = false
    
    var body: some View {
        let equipmentLength: Int = Int(campingEquipment.count)

        VStack {
            MapView(latitude: 37.26915, longitude: -122.14589)
                .frame(height: 300)


            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                
                ScrollView{
//                    ForEach(campingEquipment.indices) { index in
//                        ToggleWithLabel(isChecked: $isChecked[index], label: campingEquipment[index])
//                    }
                    ForEach(0..<Int(equipmentLength), id: \.self) { i in
                        ToggleWithLabel(isChecked: false, label: campingEquipment[i])

                    }

                }
                

                //ToggleWithLabel(isChecked: $isChecked, label: "Camping Set")
                
//                HStack {
//                    Toggle(isOn: $isChecked) {
//                        Text("Camping Set")
//                    }
//                    .toggleStyle(.automatic)
//                }
//                .padding()
            }
            .padding()
            Spacer()
        }
    }
}

struct ToggleWithLabel: View {
    
    @State var isChecked: Bool
    var label: String
    
    var body: some View {
        HStack {
            Toggle(isOn: .constant(isChecked)) {
                Text(label)
            }
            .toggleStyle(.automatic)
            .onTapGesture {
                isChecked = (isChecked) ? false : true
            }
        }
        .padding()
    }
}



#Preview {
    LocationView(activeLocation: .constant(Location(type: "test", coordinates: "t", equipment: [])))
}
