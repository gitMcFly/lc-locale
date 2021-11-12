import XCTest
@testable import lc_locale

final class lc_localeTests: XCTestCase {
    func testLanguage() {
        let toronto = Locale.canada(language: .english)
        let quebec = Locale.canada(language: .french)
        
        XCTAssertEqual(toronto.language, .english)
        XCTAssertEqual(quebec.language, .french)
        
        let china = Locale.china()
        XCTAssertEqual(china.language, .chinese)
        
    }
    
    func testAllHaveUniqueCountryCode() {
        let allCases: [Locale] = [
            .australia(),
            .austria(),
            .brazil(),
            .canada(language: .english),
            .chile(),
            .china(),
            .columbia(),
            .cuba(),
            .denmark(),
            .france(),
            .germany(),
            .japan(),
            .southKorea(),
            .spain(),
            .unitedStates(),
            .unitedKingdom(),
        ]
        
        let countryCodes = allCases.map { $0.identifier.components(separatedBy: "_").last! }
        
        var seen = Set<String>()
        
        countryCodes.forEach {
            XCTAssertFalse(seen.contains($0), "Duplicate for country code: \($0)")
            seen.insert($0)
            
        }
        
    }
    
}
