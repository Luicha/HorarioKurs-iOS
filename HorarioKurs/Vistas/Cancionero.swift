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
            TabView(selection: $mainTabSelection) {
                SongListView(songs: songs)
                    .tag(0)
                    .tabItem {
                        Text("Kolyadky")
                        Image(systemName: "music.note.list")
                    }
                
                TradicionalListView(tradicionales: tradicionales)
                    .tag(1)
                    .tabItem {
                        Text("Tradicionales")
                        Image(systemName: "music.mic")
                    }
            }
            .navigationTitle("Cancionero")
        }
        .accentColor(.red)

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
                .navigationBarTitleDisplayMode(.inline)
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
                .navigationBarTitleDisplayMode(.inline)

            } else {
                // Fallback on earlier versions
            }
        }
    }
    
    struct SongListView: View {
        let songs: [Song]
        var body: some View {
            NavigationView {
                VStack {
                    List(songs) { song in
                        NavigationLink(destination: SongLyricsView(song: song)) {
                            Image(systemName: "music.note")
                            Text(song.title)
                        }
                    }
                    .listStyle(InsetListStyle())
                }
                .navigationTitle("Kolyadky")

            }
        }
    }

    struct TradicionalListView: View {
        let tradicionales: [Tradicional]
        var body: some View {
            NavigationView {
                VStack {
                    List(tradicionales) { bong in
                        NavigationLink(destination: TradicionalLyricsView(bong: bong)) {
                            HStack {
                                Image(systemName: "music.note")
                                Text(bong.btitle)
                            }
                        }
                    }
                    .listStyle(.inset)
                }
                .navigationTitle("Tradicionales")

            }
        }
    }
    
    struct Cancionero_Previews: PreviewProvider {
        static var previews: some View {
            Cancionero()
        }
    }
