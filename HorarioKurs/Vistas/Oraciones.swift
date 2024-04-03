//
//  Oraciones.swift
//  HorarioKurs
//
//  Created by Jorge Luis Gomez on 23/03/2024.
//

import SwiftUI

struct Oraciones: View {
    @State private var mainTabSelection = 0
    @State private var secondaryTabSelection = 0
    
    
    var body: some View {
        NavigationView {
            List() {
                NavigationLink(destination: OrMatutinas(filename: "orMatutinas")) {
                    Text("Oraciones matutinas")
                }
                NavigationLink(destination: OrMatutinas(filename: "orVespertinas")) {
                    Text("Oraciones vespertinas")
                }
                NavigationLink(destination: OrMatutinas(filename: "orMemoriales")) {
                    Text("Memoriales")
                }
                NavigationLink(destination: OrMatutinas(filename: "orAntes")) {
                    Text("Oraciones antes de la Comunión")
                }
                NavigationLink(destination: OrMatutinas(filename: "orPreparacion")) {
                    Text("Preparación para la Comunión")
                }
                NavigationLink(destination: OrMatutinas(filename: "OrDespues")) {
                    Text("Oraciones después de la Comunión")
                }
                NavigationLink(destination: OrMatutinas(filename: "CanonConst")) {
                    Text("Canon de contrición a nuestro Señor Jesucristo")
                }
                NavigationLink(destination: OrMatutinas(filename: "CanonVirgen")) {
                    Text("Canon de oración a la Santísima Virgen")
                }
                NavigationLink(destination: OrMatutinas(filename: "CanonAngel")) {
                    Text("Canon al ángel de la guarda")
                }
                NavigationLink(destination: OrMatutinas(filename: "OrNecesidades")) {
                    Text("Oraciones para cada necesidad")
                }
            }
            .navigationTitle("Oraciones")
        }
    }
}

#Preview {
    Oraciones()
}
