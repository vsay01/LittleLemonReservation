//
//  RestaurantList.swift
//  StartingProject
//
//  Created by vsay on 12/25/22.
//

import SwiftUI

struct RestaurantList: View {
    var list: [RestaurantLocation]
    
    init(_ list: [RestaurantLocation]) {
        self.list = list
    }
    
    var body: some View {
        List {
            ForEach(list, id:\.city) { element in
                NavigationLink(destination: ReservationForm(element)) {
                    RestaurantView(element)
                }
            }
        }
        .scrollContentBackground(.hidden)
    }
}

struct RestaurantList_Previews: PreviewProvider {
    static var previews: some View {
        let sampleRestaurantList = [RestaurantLocation(city: "Las Vegas", neighborhood: "Downtown", phoneNumber: "(702) 555-9898")]
        
        RestaurantList(sampleRestaurantList)
    }
}
