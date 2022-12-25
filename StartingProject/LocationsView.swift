import SwiftUI

struct LocationsView: View {
    
    @EnvironmentObject var model:Model
    
    var body: some View {
        VStack {
            LittleLemonLogo() // 1
                .padding(.top, 50)
            
            SubTitle(model.displayingReservationForm) // 2
            
            NavigationView {
                RestaurantList(model.restaurants) // 3
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
            }
        }
        .padding(.top, -10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView().environmentObject(Model())
    }
}

