//
//  SignInModel.swift
//  HomeWork9
//

//

import Foundation

class SignInModel {
    
    weak var delegate: SignInModelDelegate?
    
    var emailValid: Bool = false
    var passwordValid: Bool = false
    
    var email: String = "" {
        didSet {
            let validMail = MailValidator()
            if let errorMessage = validMail.validate(text: email) {
                delegate?.didValidate(errorText: errorMessage, textType: .error)
            } else {
                emailValid = true
                delegate?.didValidate(errorText: "Дійсний емейл", textType: .regular)
            }
        }
    }
    
    var password: String = "" {
        didSet {
            let validPassword = PasswordValidator()
            if let errorMessage = validPassword.validate(text: password){
                delegate?.didValidate(errorText: errorMessage, textType: .error)
            } else {
                passwordValid = true
                delegate?.didValidate(errorText: "Дійсний пароль", textType: .regular)
            }
            
        }
    }
}
