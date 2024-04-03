//
//  ContentView.swift
//  HorarioKurs
//
//  Created by Jorge Luis Gomez on 23/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Horarios()
                .tabItem {
                    Image(systemName: "calendar.badge.clock")
                    Text("Horarios")
                }
            Cancionero()
                .tabItem {
                    Image(systemName: "music.note")
                    Text("Cancionero")
                }
            Oraciones()
                .tabItem {
                    Image(systemName: "flame")
                    Text("Oraciones")
                }
        }
    }
}

#Preview {
    ContentView()
}
