//  Locale+Extensions.swift
//  6/22/20

import Foundation

public extension Locale {
    enum Language: String, CaseIterable {
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
    
    static func australia(language: Language = .english) -> Locale {
        .init(identifier: "\(language.rawValue)_AU")
    }
    
    static func austria(language: Language = .german) -> Locale {
        .init(identifier: "\(language.rawValue)_AT")
    }
    
    static func brazil(language: Language = .portuguese) -> Locale {
        .init(identifier: "\(language.rawValue)_BR")
    }
    
    static func canada(language: Language) -> Locale {
        .init(identifier: "\(language.rawValue)_CA")
    }
    
    static func chile(language: Language = .spanish) -> Locale {
        .init(identifier: "\(language.rawValue)_CL")
    }
    
    static func china(language: Language = .chinese) -> Locale {
        .init(identifier: "\(language.rawValue)_CN")
    }
    
    static func columbia(language: Language = .spanish) -> Locale {
        .init(identifier: "\(language.rawValue)_CO")
    }
    
    static func cuba(language: Language = .spanish) -> Locale {
        .init(identifier: "\(language.rawValue)_CU")
    }
    
    static func denmark(language: Language = .spanish) -> Locale {
        .init(identifier: "\(language.rawValue)_DK")
    }
    
    static func france(language: Language = .french) -> Locale {
        .init(identifier: "\(language.rawValue)_FR")
    }
    
    static func germany(language: Language = .german) -> Locale {
        .init(identifier: "\(language.rawValue)_DE")
    }
    
    static func japan(language: Language = .japanese) -> Locale {
        .init(identifier: "\(language.rawValue)_JP")
    }
    
    static func southKorea(language: Language = .korean) -> Locale {
        .init(identifier: "\(language.rawValue)_KR")
    }
    
    static func spain(language: Language = .spanish) -> Locale {
        .init(identifier: "\(language.rawValue)_ES")
    }
    
    static func unitedStates(language: Language = .english) -> Locale {
        .init(identifier: "\(language.rawValue)_US")
    }
    
    static func unitedKingdom(language: Language = .english) -> Locale {
        .init(identifier: "\(language.rawValue)_UK")
    }
    
}

public extension Locale {
    var language: Language? {
        guard let languageCode = self.languageCode else { return nil }
        return Language.allCases.first { $0.rawValue == languageCode }
    }
    
}
