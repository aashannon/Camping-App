



import SwiftUI
import MapKit


struct MapView: View {
    
    var latitude: Double
    var longitude: Double
    
    init(latitude: Double, longitude: Double) {
           self.latitude = latitude
           self.longitude = longitude
       }
       
    
    var body: some View {
            Map(initialPosition: .region(region))
        }


    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: latitude, longitude: longitude),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}


#Preview {
    MapView(latitude: 37.26915 , longitude: -122.14589)
}
