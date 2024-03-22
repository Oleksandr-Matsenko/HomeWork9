//
//  TextValidator.swift
//  HomeWork9
//

//

import Foundation

class TextValidator {
    
    func validate(text: String) -> String? {
        
        if text.isEmpty {
            return "Поле вводу не має бути пустими"
        }
        
        if text.count < 3 {
            return "Кількість символів має бути не менше 3"
        }
        
        return nil
    }
}
