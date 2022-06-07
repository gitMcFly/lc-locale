//  Locale+Extensions.swift
//  6/22/20

@_exported import struct Foundation.Locale

public extension Locale {
    @available(macOS, deprecated, obsoleted: 13, renamed: "LCLanguage")
    @available(*, deprecated, renamed: "LCLanguage")
    typealias Language = LCLanguage
    
    enum LCLanguage: String, CaseIterable {
        case chinese = "zh"
        case danish = "da"
        case english = "en"
        case french = "fr"
        case german = "de"
        case japanese = "ja"
        case korean = "ko"
        case portuguese = "pt"
        case spanish = "es"
        
    }
    
    static func australia(language: LCLanguage = .english) -> Locale {
        .init(identifier: "\(language.rawValue)_AU")
    }
    
    static func austria(language: LCLanguage = .german) -> Locale {
        .init(identifier: "\(language.rawValue)_AT")
    }
    
    static func brazil(language: LCLanguage = .portuguese) -> Locale {
        .init(identifier: "\(language.rawValue)_BR")
    }
    
    static func canada(language: LCLanguage) -> Locale {
        .init(identifier: "\(language.rawValue)_CA")
    }
    
    static func chile(language: LCLanguage = .spanish) -> Locale {
        .init(identifier: "\(language.rawValue)_CL")
    }
    
    static func china(language: LCLanguage = .chinese) -> Locale {
        .init(identifier: "\(language.rawValue)_CN")
    }
    
    static func columbia(language: LCLanguage = .spanish) -> Locale {
        .init(identifier: "\(language.rawValue)_CO")
    }
    
    static func cuba(language: LCLanguage = .spanish) -> Locale {
        .init(identifier: "\(language.rawValue)_CU")
    }
    
    static func denmark(language: LCLanguage = .spanish) -> Locale {
        .init(identifier: "\(language.rawValue)_DK")
    }
    
    static func france(language: LCLanguage = .french) -> Locale {
        .init(identifier: "\(language.rawValue)_FR")
    }
    
    static func germany(language: LCLanguage = .german) -> Locale {
        .init(identifier: "\(language.rawValue)_DE")
    }
    
    static func japan(language: LCLanguage = .japanese) -> Locale {
        .init(identifier: "\(language.rawValue)_JP")
    }
    
    static func southKorea(language: LCLanguage = .korean) -> Locale {
        .init(identifier: "\(language.rawValue)_KR")
    }
    
    static func spain(language: LCLanguage = .spanish) -> Locale {
        .init(identifier: "\(language.rawValue)_ES")
    }
    
    static func unitedStates(language: LCLanguage = .english) -> Locale {
        .init(identifier: "\(language.rawValue)_US")
    }
    
    static func unitedKingdom(language: LCLanguage = .english) -> Locale {
        .init(identifier: "\(language.rawValue)_UK")
    }
    
}

public extension Locale {
    var language: LCLanguage? {
        guard let languageCode = self.languageCode else { return nil }
        return LCLanguage.allCases.first { $0.rawValue == languageCode }
    }
    
}
