import SwiftUI
import WidgetKit
import AppIntents
import Limooonik

struct ChangeSettings {
    static var current: LittleStoriesGonfig {
        var config = LittleStoriesGonfig()
        
        config.bgColor = .black
        
        config.planetGradient = Gradient(stops: [
            .init(color: Color(red: 38 / 255, green: 50 / 255, blue: 104 / 255), location: 0.0),
            .init(color: Color(red: 118 / 255, green: 94 / 255, blue: 243 / 255), location: 0.71),
            .init(color: Color(red: 207 / 255, green: 140 / 255, blue: 237 / 255), location: 1.0)
        ])
        
        config.roundColor1 = Color(red: 241 / 255, green: 177 / 255, blue: 134 / 255)
        config.roundColor2 = Color(red: 207 / 255, green: 75 / 255, blue: 242 / 255)
        config.roundColor3 = Color(red: 0 / 255, green: 255 / 255, blue: 255 / 255)
        config.roundColor4 = Color(red: 237 / 255, green: 170 / 255, blue: 20 / 255)
        config.roundColor5 = Color(red: 207 / 255, green: 140 / 255, blue: 237 / 255)
        
        config.roundOpacity1 = 1.0
        config.roundOpacity2 = 1.0
        config.roundOpacity3 = 1.0
        config.roundOpacity4 = 1.0
        config.roundOpacity5 = 1.0
        
        config.starsColor = Color.purple
        config.starsOpacity = 1.0


        return config
    }
}
