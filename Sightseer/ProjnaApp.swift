//
//  ProjnaApp.swift
//  Projna
//
//  Created by Raazu Pahlowan on 22/2/21.
//

import SwiftUI

@main
struct ProjnaApp: App {
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView{
            NavigationView{
                ContentView(location: locations.primary )
                }
            .tabItem {
                Image(systemName: "airplane.circle.fill")
                Text("Discover")
                }
                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
            }
            .environmentObject(locations)
        }
    }
}
