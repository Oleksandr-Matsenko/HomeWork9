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
    
    var email: String = ""
    var password: String = ""
}
