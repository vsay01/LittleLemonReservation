//
//  SubTitle.swift
//  StartingProject
//
//  Created by vsay on 12/25/22.
//

import SwiftUI

struct SubTitle: View {
    var isReservationFormDisplayed = false
    
    init(_ isReservationFormDisplayed:Bool) {
        self.isReservationFormDisplayed = isReservationFormDisplayed
    }
    
    var body: some View {
        let title = isReservationFormDisplayed ? "Reservation Details" : "Select a location"
        Text(title)
        .padding([.leading, .trailing], 40)
        .padding([.top, .bottom], 8)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(20)
    }
}

struct SubTitle_Previews: PreviewProvider {
    static var previews: some View {
        SubTitle(false)
    }
}
