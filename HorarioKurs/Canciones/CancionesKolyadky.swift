//
//  CancionesKolyadky.swift
//  HorarioKurs
//
//  Created by Jorge Luis Gomez on 28/03/2024.
//

// SongData.swift

import Foundation

struct Song: Identifiable {
    let id = UUID()
    let title: String
    let lyricsFileName: String
    
    
    var lyrics: String {
        guard let fileURL = Bundle.main.url(forResource: lyricsFileName, withExtension: "txt", subdirectory: "Kolyadky"),
              let lyricsData = try? Data(contentsOf: fileURL),
              let lyricsString = String(data: lyricsData, encoding: .utf8) else {
            return "Lyrics not found"
        }
        return lyricsString
    }
}

let songs: [Song] = [
    Song(title: "А в Єрусалимі", lyricsFileName: "А в Єрусалимі"),
    Song(title: "Бог Предвічний", lyricsFileName: "Бог Предвічний"),
    Song(title: "Бог ся раждає", lyricsFileName: "Бог ся раждає"),
    Song(title: "В Вифлеємі днесь Марія", lyricsFileName: "В Вифлеємі днесь Марія"),
    Song(title: "В Вифлеємі новина", lyricsFileName: "В Вифлеємі новина"),
    Song(title: "В Вифлеємі тайна сталась превелика", lyricsFileName: "В Вифлеємі тайна сталась превелика"),
    Song(title: "В полі, полі плужок оре", lyricsFileName: "В полі, полі плужок оре"),
    Song(title: "Во Вифлеємі нині новина", lyricsFileName: "Во Вифлеємі нині новина"),
    Song(title: "Возвеселімся всі купно нині", lyricsFileName: "Возвеселімся всі купно нині"),
    Song(title: "Вселенная веселися", lyricsFileName: "Вселенная веселися"),
    Song(title: "Дивная новина", lyricsFileName: "Дивная новина"),
    Song(title: "Добрий Вечір тобі", lyricsFileName: "Добрий Вечір тобі"),
    Song(title: "Іде звізда чудна", lyricsFileName: "Іде звізда чудна"),
    Song(title: "Кондак - Глас 4", lyricsFileName: "Кондак - Глас 4"),
    Song(title: "На небі зірка", lyricsFileName: "На небі зірка"),
    Song(title: "На Святий Вечір", lyricsFileName: "На Святий Вечір"),
    Song(title: "Небо і земля", lyricsFileName: "Небо і земля"),
    Song(title: "Нова радість стала", lyricsFileName: "Нова радість стала"),
    Song(title: "Ой у саду, саду", lyricsFileName: "Ой у саду, саду"),
    Song(title: "По всьому світу стала новина", lyricsFileName: "По всьому світу стала новина"),
    Song(title: "Радість нам ся являє", lyricsFileName: "Радість нам ся являє"),
    Song(title: "Спи, Ісусе, спи", lyricsFileName: "Спи, Ісусе, спи"),
    Song(title: "Ти, Йордане, приготовися!", lyricsFileName: "Ти, Йордане, приготовися!"),
    Song(title: "Тропар Богоявлення - Глас 1", lyricsFileName: "Тропар Богоявлення - Глас 1"),
    Song(title: "Херувими- «Свят!»", lyricsFileName: "Херувими- «Свят!»"),
    Song(title: "Щедрий Вечір всім нам", lyricsFileName: "Щедрий Вечір всім нам"),
    Song(title: "Щедрий Вечір, Добрий Вечір", lyricsFileName: "Щедрий Вечір, Добрий Вечір"),

    // Add more songs as needed
]

