//
//  Cancionero.swift
//  HorarioKurs
//
//  Created by Jorge Luis Gomez on 23/03/2024.
//

import SwiftUI

struct Cancionero: View {
    @State private var mainTabSelection = 0
    @State private var secondaryTabSelection = 0

    var body: some View {
        VStack {
            Picker(selection: $mainTabSelection, label: Text("")) {
                Text("Kolyadky").tag(0)
                Text("Tradicionales").tag(1)
                // Add more tabs as needed
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal)
            
            // Main TabView
            TabView(selection: $mainTabSelection) {
                // Main Tab 1 content
                SongListView(songs: songs)
                    .tag(0)
                
                // Main Tab 2 content
                TradicionalListView(tradicionales: tradicionales)
                    .tag(1)
                  
            }
        }
    }
}

struct SongLyricsView: View {
    let song: Song // Selected song
    
    var body: some View {
        if #available(iOS 16.0, *) {
            ScrollView {
                Text(song.lyrics)
            }
            .padding(.horizontal)
            .scrollIndicators(.hidden)
            .navigationTitle(song.title)
        } else {
            // Fallback on earlier versions
        }
    }
}

struct TradicionalLyricsView: View {
    let bong: Tradicional // Selected song
    
    var body: some View {
        if #available(iOS 16.0, *) {
            ScrollView {
                Text(bong.blyrics)
            }
            .padding(.horizontal)
            .scrollIndicators(.hidden)
            .navigationTitle(bong.btitle)
        } else {
            // Fallback on earlier versions
        }
    }
}

struct SongListView: View {
    let songs: [Song]
    
    var body: some View {
        NavigationView {
            List(songs) { song in
                NavigationLink(destination: SongLyricsView(song: song)) {
                    Image(systemName: "music.note")
                    Text(song.title)
                }
            }
        }
    }
}
struct TradicionalListView: View {
    let tradicionales: [Tradicional]
    
    var body: some View {
        NavigationView {
            List(tradicionales) { bong in
                NavigationLink(destination: TradicionalLyricsView(bong: bong)) {
                    Image(systemName: "music.note")
                    Text(bong.btitle)
                }
            }
        }
    }
}

struct Cancionero_Previews: PreviewProvider {
    static var previews: some View {
        Cancionero()
    }
}
