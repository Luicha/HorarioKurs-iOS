//
//  CancionesKolyadky.swift
//  HorarioKurs
//
//  Created by Jorge Luis Gomez on 28/03/2024.
//

// SongData.swift

import Foundation

struct Tradicional: Identifiable {
    let id = UUID()
    let btitle: String
    let blyricsFileName: String // File name for lyrics
    
    
    var blyrics: String {
        guard let bfileURL = Bundle.main.url(forResource: blyricsFileName, withExtension: "txt", subdirectory: "Kolyadky") else {
            print("Error: Unable to find URL for resource \(blyricsFileName).txt in subdirectory 'Tradicional'")
            return "Letra no encontrada :("
        }
        
        do {
            let blyricsData = try Data(contentsOf: bfileURL)
            guard let blyricsString = String(data: blyricsData, encoding: .utf8) else {
                print("Error: Unable to decode data to UTF-8 string.")
                return "Letra no encontrada :("
            }
            return blyricsString
        } catch {
            print("Error: \(error)")
            return "Letra no encontrada :("
        }
    }
}


// Define an array of songs
let tradicionales: [Tradicional] = [
    Tradicional(btitle: "А ми люди подорожні", blyricsFileName: "А ми люди подорожні"),
    Tradicional(btitle: "Била мене мати", blyricsFileName: "Била мене мати"),
    Tradicional(btitle: "Бодай ся когут знудив", blyricsFileName: "Бодай ся когут знудив"),
    Tradicional(btitle: "Боже великий, єдиний", blyricsFileName: "Боже великий, єдиний"),
    Tradicional(btitle: "Верховино", blyricsFileName: "Верховино"),
    Tradicional(btitle: "Веснянка", blyricsFileName: "Веснянка"),
    Tradicional(btitle: "Гей, на горі там женці жнуть", blyricsFileName: "Гей, на горі там женці жнуть"),
    Tradicional(btitle: "Гімн українській мові", blyricsFileName: "Гімн українській мові"),
    Tradicional(btitle: "Господи помилуй нас", blyricsFileName: "Господи помилуй нас"),
    Tradicional(btitle: "Гуцулко Ксеню", blyricsFileName: "Гуцулко Ксеню"),
    Tradicional(btitle: "Думи мої", blyricsFileName: "Думи мої"),
    Tradicional(btitle: "Заспіваймо пісню веселеньку", blyricsFileName: "Заспіваймо пісню веселеньку"),
    Tradicional(btitle: "Зеленеє жито, зелене", blyricsFileName: "Зеленеє жито, зелене"),
    Tradicional(btitle: "І шумить, і гуде", blyricsFileName: "І шумить, і гуде"),
    Tradicional(btitle: "Кличе спалена пісня", blyricsFileName: "Кличе спалена пісня"),
    Tradicional(btitle: "Лебеді материнства", blyricsFileName: "Лебеді материнства"),
    Tradicional(btitle: "Мамина молитва", blyricsFileName: "Мамина молитва"),
    Tradicional(btitle: "Мамина світлиця", blyricsFileName: "Мамина світлиця"),
    Tradicional(btitle: "Марічка", blyricsFileName: "Марічка"),
    Tradicional(btitle: "Ми гайдамаки", blyricsFileName: "Ми гайдамаки"),
    Tradicional(btitle: "Милосердная Мати, Покров", blyricsFileName: "Милосердная Мати, Покров"),
    Tradicional(btitle: "Місяць на небі", blyricsFileName: "Місяць на небі"),
    Tradicional(btitle: "Мої ясени", blyricsFileName: "Мої ясени"),
    Tradicional(btitle: "Налевайте, браття, кришталеві чаші", blyricsFileName: "Налевайте, браття, кришталеві чаші"),
    Tradicional(btitle: "Несе Галя воду", blyricsFileName: "Несе Галя воду"),
    Tradicional(btitle: "Одна калина", blyricsFileName: "Одна калина"),
    Tradicional(btitle: "Ой у вишневому садочку", blyricsFileName: "Ой у вишневому садочку"),
    Tradicional(btitle: "Ой у лузі червона калина похилилася", blyricsFileName: "Ой у лузі червона калина похилилася"),
    Tradicional(btitle: "Ой чорна я си чорна", blyricsFileName: "Ой чорна я си чорна"),
    Tradicional(btitle: "Ой, видно село", blyricsFileName: "Ой, видно село"),
    Tradicional(btitle: "Оксано, Оксано", blyricsFileName: "Оксано, Оксано"),
    Tradicional(btitle: "Пісня про рушник", blyricsFileName: "Пісня про рушник"),
    Tradicional(btitle: "Плакуча гітара", blyricsFileName: "Плакуча гітара"),
    Tradicional(btitle: "Повези мене батьку, на Україну", blyricsFileName: "Повези мене батьку, на Україну"),
    Tradicional(btitle: "Свіча", blyricsFileName: "Свіча"),
    Tradicional(btitle: "Служив козак у війську", blyricsFileName: "Служив козак у війську"),
    Tradicional(btitle: "Сторона моя", blyricsFileName: "Сторона моя"),
    Tradicional(btitle: "Ти сказала прийди, прийди", blyricsFileName: "Ти сказала прийди, прийди"),
    Tradicional(btitle: "Україна", blyricsFileName: "Україна"),
    Tradicional(btitle: "Чабан", blyricsFileName: "Чабан"),
    Tradicional(btitle: "Червона рута", blyricsFileName: "Червона рута"),
    Tradicional(btitle: "Червоний вітер", blyricsFileName: "Червоний вітер"),
    Tradicional(btitle: "Човен хитається", blyricsFileName: "Човен хитається"),
    Tradicional(btitle: "Чом, чом, Земле моя", blyricsFileName: "Чом, чом, Земле моя"),
    Tradicional(btitle: "Чорні очка, як терен", blyricsFileName: "Чорні очка, як терен"),
    Tradicional(btitle: "Шабелина (Ой хмариться)", blyricsFileName: "Шабелина (Ой хмариться)"),
]

