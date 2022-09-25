//
//  SettingsView.swift
//  izhitsa
//
//  Created by Дмитрiй Канунниковъ on 13.09.2022.
//

import SwiftUI

struct SettingsView: View {
    
    @AppStorage("SettingsView.isSystemFontAndSize")
    private var isSystemFontAndSize: Bool = true
    
    @AppStorage("SettingsView.isPreRevolutionary")
    private var isPreRevolutionary: Bool = false
    
    @AppStorage("SettingsView.Keyboard.isSystemFontAndSize", store: UserDefaults(suiteName: Config.APP_GROUP_NAME))
    private var isKeyboardSystemFontAndSize: Bool = true
    
    @AppStorage("SettingsView.Keyboard.isAudioFeedback", store: UserDefaults(suiteName: Config.APP_GROUP_NAME))
    private var isKeyboardAudioFeedback: Bool = false
    
    var body: some View {
        List {
            Section {
                Toggle(
                    isPreRevolutionary ? "Системный шрифтъ и размѣръ" : "Системный шрифт и размер",
                    isOn: $isSystemFontAndSize
                )
                .font(isSystemFontAndSize ? .body : Config.customBodyFont)
                
                Toggle(
                    isPreRevolutionary ? "Дореволюціонная орѳографія" : "Дореволюционная орфография",
                    isOn: $isPreRevolutionary
                )
                .font(isSystemFontAndSize ? .body : Config.customBodyFont)
            } header: {
                Text(isPreRevolutionary ? "Основныя" : "Основные")
                    .font(isSystemFontAndSize ? .footnote : Config.customFootnoteFont)
            } footer: {
                Text(isPreRevolutionary ? "Возможность отображенія текста въ старинномъ начертаніи и орѳографіи до реформы 1918-го года." : "Возможность отображения текста в старинном начертании и орфографии до реформы 1918-го года.")
                    .font(isSystemFontAndSize ? .footnote : Config.customFootnoteFont)
            }
            
            Section {
                Toggle(
                    isPreRevolutionary ? "Системный шрифтъ и размѣръ" : "Системный шрифт и размер",
                    isOn: $isKeyboardSystemFontAndSize
                )
                .font(isSystemFontAndSize ? .body : Config.customBodyFont)
                
                Toggle(
                    isPreRevolutionary ? "Звуковой сигналъ клавишъ" : "Звуковой сигнал клавиш",
                    isOn: $isKeyboardAudioFeedback
                )
                .font(isSystemFontAndSize ? .body : Config.customBodyFont)
            } header: {
                Text(isPreRevolutionary ? "Клавіатура" : "Клавиатура")
                    .font(isSystemFontAndSize ? .footnote : Config.customFootnoteFont)
            } footer: {
                Text(isPreRevolutionary ? "Возможность отображенія текста въ старинномъ начертаніи. Ну, и звукъ при нажатіи клавишъ." : "Возможность отображения текста в старинном начертании. Ну, и звук при нажатии клавиш.")
                    .font(isSystemFontAndSize ? .footnote : Config.customFootnoteFont)
            }
        }
#if os(iOS)
        .listStyle(.insetGrouped)
#elseif !os(tvOS) && !os(watchOS)
        .listStyle(.inset)
#endif
        .navigationTitle("Настройки")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
