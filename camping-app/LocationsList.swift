//
//  LocationsList.swift
//  camping-app
//
//  Created by james lesperance on 4/25/24.
//

import SwiftUI
import Foundation
import UIKit

struct Location: Codable, Identifiable {
    
    enum CodingKeys: CodingKey {
        case type
        case coordinates
        case equipment
    }
    
    var id = UUID()
    var type: String
    var coordinates: String
    var equipment: [String]
    var active: Bool = false
}

class ReadData: ObservableObject  {
    @Published var locations = [Location]()
    
        
    init(){
        loadData()
    }
    
    func loadData()  {
        guard let url = Bundle.main.url(forResource: "locations", withExtension: "json")
            else {
                print("Json file not found")
                return
            }
        
        print(url)
        
        let data = try? Data(contentsOf: url)
        let locations = try? JSONDecoder().decode([Location].self, from: data!)
        print(type(of: locations))
        self.locations = locations!
        
    }
     
}

struct LocationsList: View {
    @ObservedObject var data = ReadData();
    
    @State var activeLocation: Location
    @State var active: Bool = false
    var body: some View {
        
        if(active) {
            SwiftUIView(activeLocation: $activeLocation, active: $active)
            LocationView(activeLocation: $activeLocation)
        } else {
            List(data.locations){ location in
                VStack(alignment: .leading) {
                    Text(location.type)
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.gray)
                        .onTapGesture {
                            active = true
                            activeLocation = location
                            print("workd")
                }
                
                Text(location.coordinates)
                    Text(location.equipment[0])
            }
       
            }
                  
        }
    }
}

#Preview {
    LocationsList(activeLocation: Location(type: "test", coordinates: "t", equipment: []), active: false)
}


