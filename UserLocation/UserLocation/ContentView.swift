//
//  ContentView.swift
//  UserLocation
//
//  Created by vishwanath kota on 20/10/2021.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var viewModel = ContentViewModel()
    
    var body: some View {
        Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
            .ignoresSafeArea()
            .accentColor(Color(.systemPink))
            .onAppear {
                viewModel.checkIfLocationServicesEnabled()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
