//
//  PasswordValidator.swift
//  HomeWork9
//
//  Created by Alex Matsenko on 22.03.2024.
//

import Foundation
class PasswordValidator: TextValidator {
    override func validate(text: String) -> String? {
        switch true {
            case text.count < 5:
                return "Пароль має містити мінімум 5 символів"
            case text.count > 16:
                return "Пароль має містити не більше 16 символів"
            case !checkRegistr(text: text):
                return "Пароль має містити символи верхнього регістру"
            default:
                break
        }
        if let errorMEssage = super.validate(text: text) {
            return errorMEssage
        }
        return nil
    }
    private func checkRegistr(text: String) -> Bool {
        for character in text {
            if character.isUppercase {
                return true
            }
        
        }
        return false
    }
}
