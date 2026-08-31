import SwiftUI
import WidgetKit
import AppIntents
import Limooonik

@main
struct LittleStoriesWidget: Widget {
    let kind: String = "LittleStoriesWidget"
    let config = ChangeSettings.current

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Limooonik.Provider(config: config)) { e in
            Limooonik.LittleStoriesLayout(e: e)
                .containerBackground(for: .widget) {
                    e.config.bgColor
                }
        }
        .configurationDisplayName("Little Stories")
        .description("Animated widget from Limooonik")
        .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
    }
}

// Мост, чтобы iOS видела интерактивные кнопки внутри закрытого фреймворка
struct WidgetIntentsPackage: AppIntentsPackage {
    static var includedPackages: [any AppIntentsPackage.Type] {
        [LimooonikIntentsPackage.self]
    }
}
