//
//  Pre1917RussianCalloutActionProvider.swift
//  keyboard
//
//  Created by Дмитрiй Канунниковъ on 09.07.2022.
//

import Foundation
import KeyboardKit

/**
 This class provides Pre-Revolutionary Russian callout actions.
 
 You can use the class as a template when you want to create
 your own callout action provider.
 
 KeyboardKit Pro adds a provider for each ``KeyboardLocale``
 Check out the demo app to see them in action.
 */
class Pre1918RussianCalloutActionProvider: BaseCalloutActionProvider, LocalizedService {
    
    public let localeKey: String = KeyboardLocale.russian.id
    
    /**
     Get callout actions as a string for the provided `char`.
     */
    open override func calloutActionString(for char: String) -> String {
        switch char {
            case "0": return "0°"
                
            case "е": return "еёѣ"
            case "ь": return "ьъ"
            case "и": return "иіѵ"
            case "ф": return "фѳ"
                
            case "-": return "-–—•"
            case "/": return "/\\"
            case "₽": return "₽$€£¥₩"
            case "&": return "&§"
            case "”", "“": return "\"”“„»«"
            case ".": return ".…"
            case "?": return "?¿"
            case "!": return "!¡"
            case "'", "’": return "'’‘`"
                
            case "%": return "%‰"
            case "=": return "=≠≈"
                
            default: return ""
        }
    }
}
