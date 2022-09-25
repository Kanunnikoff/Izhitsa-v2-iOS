//
//  KeyboardViewController.swift
//  keyboard
//
//  Created by Дмитрiй Канунниковъ on 09.07.2022.
//

import UIKit
import KeyboardKit

class KeyboardViewController: KeyboardInputViewController {
    
    override func viewDidLoad() {
        keyboardContext.locale = KeyboardLocale.russian.locale
        keyboardAppearance = MyKeyboardAppearance(context: keyboardContext)
        
        var pre1918RussianCalloutActionProvider: LocalizedCalloutActionProvider {
            guard let provider = try? Pre1918RussianCalloutActionProvider() else {
                fatalError("Pre1918RussianCalloutActionProvider could not be created.")
            }
            
            return provider
        }
        
        calloutActionProvider = StandardCalloutActionProvider(
            context: keyboardContext,
            providers: [pre1918RussianCalloutActionProvider]
        )
        
        inputSetProvider = StandardInputSetProvider(
            context: keyboardContext,
            providers: [Pre1918RussianInputSetProvider()]
        )
        
        keyboardLayoutProvider = StandardKeyboardLayoutProvider(inputSetProvider: inputSetProvider)
        
        keyboardActionHandler = MyKeyboardActionHandler(inputViewController: self)
        
        super.viewDidLoad()
    }
    
    override func viewWillSetupKeyboard() {
        super.viewWillSetupKeyboard()
        
        setup(with: KeyboardView(controller: self))
    }

}
