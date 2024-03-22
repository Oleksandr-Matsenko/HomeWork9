//
//  MailValidator.swift
//  HomeWork9
//
//  Created by Alex Matsenko on 22.03.2024.
//

import Foundation
class MailValidator: TextValidator {
    override func validate(text: String) -> String? {
        switch true {
            case text.count > 30:
                return "Емейл має містити не більше 30 символів"
            case text.count < 8:
                return "Емейл має містити мінімальну кількість символів: 8"
            case !hasChar(text: text):
                return "Емейл має містити: @"
            default:
                break
        }
        if let errorMessage = super.validate(text: text) {
            return errorMessage
        }
        return nil
    }
    private func hasChar(text: String) -> Bool {
        return text.contains("@") ? true: false
    }
}
