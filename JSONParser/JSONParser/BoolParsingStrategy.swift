import Foundation

struct BoolParsingStrategy {
    
    private var boolCharacters = [Character]()
    private var boolDetected = false
    
    private var resultBool = false
    
    mutating func parse(_ character: Character) throws -> ParsingState {
        if boolDetected {
            return try matchBoolCharacters(character)
        } else {
            try detectBool(character)
        }
        return ParsingState.isNotDone
    }
    
    
    private mutating func detectBool(_ character: Character) throws {
        switch character {
        case "t":
            boolCharacters = ["r", "u", "e"]
            resultBool = true
        case "f":
            boolCharacters = ["a", "l", "s", "e"]
            resultBool = false
        default:
            throw BoolParsingError.cannotFindBoolFormat
        }
    }
    
    private mutating func matchBoolCharacters(_ character: Character) throws -> ParsingState {
        if character == boolCharacters.first {
            boolCharacters.removeFirst()
            if boolCharacters.isEmpty { return ParsingState.isDoneCurrentCharacter(result: resultBool) }
            return ParsingState.isNotDone
        }
        throw BoolParsingError.doesNotMatchBoolCharacters
    }
    
}

enum BoolParsingError: Error {
    case cannotFindBoolFormat
    case doesNotMatchBoolCharacters
}
