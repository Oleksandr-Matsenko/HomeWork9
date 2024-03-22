//
//  SignInModelDelegate.swift
//  HomeWork9
//

//

protocol SignInModelDelegate: AnyObject {
    
    func didValidate(errorText: String?, textType: TextType)
}
