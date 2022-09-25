//
//  Config.swift
//  izhitsa
//
//  Created by Дмитрiй Канунниковъ on 13.09.2022.
//

import Foundation
import SwiftUI

struct Config {
    
    //--- Test
    
    static let isTestMode = false
    
    //--- App Store
    
    static let APPSTORE_APP_ID = 1475542308
    static let APPSTORE_APP_URL = URL(string: "https://itunes.apple.com/app/id\(APPSTORE_APP_ID)")!
    static let APPSTORE_APP_REVIEW_URL = URL(string: "https://itunes.apple.com/app/id\(APPSTORE_APP_ID)?action=write-review")!
    static let APPSTORE_DEVELOPER_URL = URL(string: "https://itunes.apple.com/developer/id1449411291")!
    static let APPSTORE_YAT_URL = URL(string: "https://itunes.apple.com/app/id1459031067")!
    static let APPSTORE_RUSSIAN_MEASURES_URL = URL(string: "https://itunes.apple.com/app/id1638481772")!
    
    static let PACKAGE_NAME = "software.kanunnikoff.izhitsa"
    
    //--- Feedback
    
    static let EMAIL_URL = URL(string: "mailto:dmitry.kanunnikoff@gmail.com?subject=%D0%98%D0%B6%D0%B8%D1%86%D0%B0%20%28iOS%29")!
    static let YOUTUBE_URL = URL(string: "https://www.youtube.com/c/DmitryKanunnikoff")!
    static let TWITTER_URL = URL(string: "https://twitter.com/DKanunnikoff")!
    static let INSTAGRAM_URL = URL(string: "https://www.instagram.com/dmitry.kanunnikoff")!
    
    //--- Privacy
    
    static let PRIVACY_POLICY_URL = URL(string: "https://docs.google.com/document/d/189iftSQQuRh8VGhFnCUDY5ujwgU5gsnnPIUjOGL5ypE/edit?usp=sharing")!
    
    // --- Support
    
    static let PATREON = URL(string: "https://patreon.com/DmitryKanunnikoff")!
    static let BOOSTY = URL(string: "https://boosty.to/dmitrykanunnikoff")!
    
    //---
    
#if os(tvOS)
    static let customBodyFont: Font = .custom("Monomakh Unicode TT", size: 29)
    static let customHeadlineFont: Font = .custom("Monomakh Unicode TT", size: 38)
    static let customSubhedlineFont: Font = .custom("Monomakh Unicode TT", size: 31)
    static let customFootnoteFont: Font = .custom("Monomakh Unicode TT", size: 25)
    static let customCaptionFont: Font = .custom("Monomakh Unicode TT", size: 25)
#elseif os(macOS)
    static let customBodyFont: Font = .custom("Monomakh Unicode TT", size: 13)
    static let customHeadlineFont: Font = .custom("Monomakh Unicode TT", size: 13)
    static let customSubhedlineFont: Font = .custom("Monomakh Unicode TT", size: 11)
    static let customFootnoteFont: Font = .custom("Monomakh Unicode TT", size: 10)
    static let customCaptionFont: Font = .custom("Monomakh Unicode TT", size: 10)
#else
    static let customBodyFont: Font = .custom("Monomakh Unicode TT", size: 17)
    static let customHeadlineFont: Font = .custom("Monomakh Unicode TT", size: 17)
    static let customSubhedlineFont: Font = .custom("Monomakh Unicode TT", size: 15)
    static let customFootnoteFont: Font = .custom("Monomakh Unicode TT", size: 13)
    static let customCaptionFont: Font = .custom("Monomakh Unicode TT", size: 12)
#endif
    
    // ---
    
    static let APP_GROUP_NAME = "group.software.kanunnikoff.izhitsa"
}
