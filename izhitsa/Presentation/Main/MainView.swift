//
//  MainView.swift
//  izhitsa
//
//  Created by Дмитрiй Канунниковъ on 13.09.2022.
//

import SwiftUI

struct MainView: View {
    
    @AppStorage("SettingsView.isSystemFontAndSize")
    private var isSystemFontAndSize: Bool = true
    
    @AppStorage("SettingsView.isPreRevolutionary")
    private var isPreRevolutionary: Bool = false
    
    @State private var text = ""
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                VStack(spacing: 20) {
                    Text(isPreRevolutionary ? "Для включенія дореволюціонной клавіатуры выполните ​слѣдующіе​ шаги:\n• въ Настройкахъ устройства зайдите въ раздѣлъ Основныя -> Клавіатура -> Клавіатуры -> ​Новыя​ клавіатуры\n• включите клавіатуру съ названіемъ Ижица" : "Для включения дореволюционной клавиатуры выполните ​следующие​ шаги:\n• в Настройках устройства зайдите в раздел Основные -> Клавиатура -> Клавиатуры -> ​Новые​ клавиатуры\n• включите клавиатуру с названием Ижица")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(isSystemFontAndSize ? .subheadline : Config.customSubhedlineFont)
                    
                    Text(isPreRevolutionary ? "Клавіатура содержитъ ​дополнительныя​ 4 буквы дореформенной орѳографіи: ять (ѣ), фиту (ѳ), и-десятичное (і) и, собственно, ижицу (ѵ)." : "Клавиатура содержит ​дополнительныяе 4 буквы дореформенной орфографии: ять (ѣ), фиту (ѳ), и-десятичное (і) и, собственно, ижицу (ѵ).")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(isSystemFontAndSize ? .subheadline : Config.customSubhedlineFont)
                    
                    Text(isPreRevolutionary ? "​Дореформенныя​ буквы доступны по долгому удержанію соотвѣтствующихъ буквъ ​есть​ (е), фертъ (​ф​) и иже (и)." : "Дореформенные буквы доступны по долгому удержанию соответствующих букв есть (е), ферт (ф) и иже (и).")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(isSystemFontAndSize ? .subheadline : Config.customSubhedlineFont)
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .overlay(
                    RoundedRectangle(
                        cornerRadius: 15,
                        style: .continuous
                    )
                    .stroke()
                    .foregroundColor(.gray)
                )
                
                TextField(isPreRevolutionary ? "Провѣрьте вводъ" : "Проверьте ввод", text: $text, axis: .vertical)
                    .lineLimit(...5)
                    .textFieldStyle(.roundedBorder)
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.sentences)
                    .font(isSystemFontAndSize ? .body : Config.customBodyFont)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Ижица")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
