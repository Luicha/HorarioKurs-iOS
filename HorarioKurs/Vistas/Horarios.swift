//
//  Horarios.swift
//  HorarioKurs
//
//  Created by Jorge Luis Gomez on 23/03/2024.
//

import SwiftUI

struct Horarios: View {
    @State private var mainTabSelection = 0
    @State private var secondaryTabSelection = 0
    
    var body: some View {
        VStack {
            // Secondary TabView
            Picker(selection: $mainTabSelection, label: Text("")) {
                Text("1°").tag(0)
                Text("2°").tag(1)
                Text("3°").tag(2)
                Text("4°").tag(3)
                Text("5°").tag(4)
                // Add more tabs as needed
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal)
            
            // Main TabView
            TabView(selection: $mainTabSelection) {
                // Main Tab 1 content
                Primero()
                    .tag(0)
                Segundo()
                    .tag(1)
                Tercero()
                    .tag(2)
                Cuarto()
                    .tag(3)
                Quinto()
                    .tag(4)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .navigationBarTitle("Horarios")
        }
    }
}

struct Primero: View {
    struct Event: Identifiable {
        var id = UUID()
        var title: String
        var time: String
    }
    
    var body: some View {
        let events = [
            Event(title: "Divina Liturgia", time: "6:46"),
            Event(title: "Desayuno", time: "7:30"),
            Event(title: "Cultura I", time: "8:10"),
            Event(title: "Mova", time: "9:00"),
            Event(title: "Teología", time: "11:05"),
            Event(title: "Rito bizantino", time: "11:50"),
            Event(title: "Almuerzo", time: "12:45"),
            Event(title: "Descanso", time: "13:30"),
            Event(title: "Práctica de la cultura", time: "15:30"),
            Event(title: "Mova", time: "16:30"),
            Event(title: "Historia I", time: "18:30"),
            Event(title: "Geografía I", time: "19:10"),
            Event(title: "Cena", time: "20:00"),
            Event(title: "Canto", time: "20:30"),
            Event(title: "Charlas, películas, juegos", time: "21:00"),
            Event(title: "Estudio, silencio nocturno", time: "22:00"),
            // Add more events as needed
        ]
        VStack {
//            Text("Primero | Перший").font(.title)

            List(events) { event in
                HStack(alignment: .center) {
                    Text(event.time)
                        .font(.headline)
                        .frame(minWidth: 30, maxWidth: 70, alignment: .leading) // Set minimum width
                    Divider()
                        .background(Color.indigo)
                    Text(event.title)
                        .font(.subheadline)
                        .frame(minWidth: 150, maxWidth: 150, alignment: .leading)
                    
                }
            }
        }
        .navigationBarTitle("Primero")
    }
}

struct Segundo: View {
    struct Event: Identifiable {
        var id = UUID()
        var title: String
        var time: String
    }
    var body: some View {
        let events = [
            Event(title: "Божественна літургія", time: "6:46"),
            Event(title: "Сніданок", time: "7:30"),
            Event(title: "Культура  II", time: "8:10"),
            Event(title: "Мова", time: "9:00"),
            Event(title: "Теологія  II", time: "11:05"),
            Event(title: "Історія  II", time: "11:50"),
            Event(title: "Обід", time: "12:45"),
            Event(title: "Відпочинок", time: "13:30"),
            Event(title: "Практика культури", time: "15:30"),
            Event(title: "Мова", time: "16:30"),
            Event(title: "Візантійський обряд ІІ", time: "18:30"),
            Event(title: "Географія ІІ", time: "19:10"),
            Event(title: "Вечеря", time: "20:00"),
            Event(title: "Спів", time: "20:30"),
            Event(title: "Розмови, фільми, ігри", time: "21:00"),
            Event(title: "Нічна тиша, навчання", time: "22:00")
        ]
        VStack {
//            Text("Segundo | Другий").font(.title)
            List(events) { event in
                HStack(alignment: .center) {
                    Text(event.time)
                        .font(.headline)
                        .frame(minWidth: 30, maxWidth: 70, alignment: .leading) // Set minimum width
                    Divider()
                        .background(Color.indigo)
                    Text(event.title)
                        .font(.subheadline)
                        .frame(minWidth: 150, maxWidth: 150, alignment: .leading)
                    
                }
            }
        }
        .navigationBarTitle("Segundo")
    }
}

struct Tercero: View {
    struct Event: Identifiable {
        var id = UUID()
        var title: String
        var time: String
    }
    var body: some View {
        let events = [
            Event(title: "Божественна літургія", time: "6:46"),
            Event(title: "Сніданок", time: "7:30"),
            Event(title: "Література I", time: "8:10"),
            Event(title: "Мова", time: "9:00"),
            Event(title: "Історія вселенської церкви", time: "11:05"),
            Event(title: "Культура III", time: "11:50"),
            Event(title: "Обід", time: "12:45"),
            Event(title: "Відпочинок", time: "13:30"),
            Event(title: "Практика культури", time: "15:30"),
            Event(title: "Мова", time: "16:30"),
            Event(title: "Література І", time: "18:30"),
            Event(title: "Історія IІІ", time: "19:10"),
            Event(title: "Вечеря", time: "20:00"),
            Event(title: "Спів", time: "20:30"),
            Event(title: "Розмови, фільми, ігри", time: "21:00"),
            Event(title: "Нічна тиша, навчання", time: "22:00")
        ]
        VStack {
//            Text("Tercero | Тритій").font(.title)
            List(events) { event in
                HStack(alignment: .center) {
                    Text(event.time)
                        .font(.headline)
                        .frame(minWidth: 30, maxWidth: 70, alignment: .leading) // Set minimum width
                    Divider()
                        .background(Color.indigo)
                    Text(event.title)
                        .font(.subheadline)
                        .frame(minWidth: 150, maxWidth: 150, alignment: .leading)
                    
                }
            }
        }
        .navigationBarTitle("Tercero")
    }
}

struct Cuarto: View {
    struct Event: Identifiable {
        var id = UUID()
        var title: String
        var time: String
    }
    var body: some View {
        let events = [
            Event(title: "Божественна літургія", time: "6:46"),
            Event(title: "Сніданок", time: "7:30"),
            Event(title: "Література II", time: "8:10"),
            Event(title: "Мова", time: "9:00"),
            Event(title: "Історія української церкви", time: "11:50"),
            Event(title: "Обід", time: "12:45"),
            Event(title: "Відпочинок", time: "13:30"),
            Event(title: "Практика культури", time: "15:30"),
            Event(title: "Мова", time: "16:30"),
            Event(title: "Культура IV", time: "18:30"),
            Event(title: "Історія IV", time: "19:10"),
            Event(title: "Вечеря", time: "20:00"),
            Event(title: "Спів", time: "20:30"),
            Event(title: "Розмови, фільми, ігри", time: "21:00"),
            Event(title: "Нічна тиша, навчання", time: "22:00")
        ]
        VStack {
//            Text("Cuarto | Четвертий").font(.title)
            List(events) { event in
                HStack(alignment: .center) {
                    Text(event.time)
                        .font(.headline)
                        .frame(minWidth: 30, maxWidth: 70, alignment: .leading) // Set minimum width
                    Divider()
                        .background(Color.indigo)
                    Text(event.title)
                        .font(.subheadline)
                        .frame(minWidth: 150, maxWidth: 150, alignment: .leading)
                    
                }
            }
        }
        .navigationBarTitle("Cuarto")
    }
}
struct Quinto: View {
    struct Event: Identifiable {
        var id = UUID()
        var title: String
        var time: String
    }
    var body: some View {
        let events = [
            Event(title: "Божественна літургія", time: "6:46"),
            Event(title: "Сніданок", time: "7:30"),
            Event(title: "Філософія", time: "8:10"),
            Event(title: "Мова", time: "9:00"),
            Event(title: "Література III", time: "11:05"),
            Event(title: "Культура V", time: "11:50"),
            Event(title: "Обід", time: "12:45"),
            Event(title: "Відпочинок", time: "13:30"),
            Event(title: "Практика культури", time: "15:30"),
            Event(title: "Мова", time: "16:30"),
            Event(title: "Вечеря", time: "20:00"),
            Event(title: "Спів", time: "20:30"),
            Event(title: "Розмови, фільми, ігри", time: "21:00"),
            Event(title: "Нічна тиша, навчання", time: "22:00")
        ]
        VStack {
//                Text("Quinto | П'ятий").font(.title)
            List(events) { event in
                HStack(alignment: .center) {
                    Text(event.time)
                        .font(.headline)
                        .frame(minWidth: 30, maxWidth: 70, alignment: .leading) // Set minimum width
                    Divider()
                        .background(Color.indigo)
                    Text(event.title)
                        .font(.subheadline)
                        .frame(minWidth: 150, maxWidth: 150, alignment: .leading)
                    
                }
            }
        }
        .navigationBarTitle("Quinto")
    }
}


#Preview {
    Horarios()
}
