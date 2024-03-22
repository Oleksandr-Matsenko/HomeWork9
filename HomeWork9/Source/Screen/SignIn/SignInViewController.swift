//
//  SignInViewController.swift
//  HomeWork9
//

//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorTextLabel: UILabel!
    
    var model: SignInModel!
    var textStyle: TextStyleProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    @IBAction func signInButtonDidTap() {
        view.endEditing(true)
        guard model.emailValid && model.passwordValid else { return }
        debugPrint("User did Sign In")
        navigationController?.popViewController(animated: true)
    }
}

// MARK: - SignInModelDelegate
extension SignInViewController: SignInModelDelegate {
    
    func didValidate(errorText: String?, textType: TextType) {
        
        errorTextLabel.text = errorText
        errorTextLabel.textColor = textStyle.textColor(for: textType)
    }
}

// MARK: - Private
private extension SignInViewController {
    
    func setup() {
        
        model = SignInModel()
        model.delegate = self
        
        textStyle = TextStyle()
        
        emailTextField.addTarget(self, action: #selector(emailTextDidChange(_:)), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(passwordTextDidChange(_:)), for: .editingChanged)
    }
    
    @objc func emailTextDidChange(_ textField: UITextField) {
        model.email = textField.text ?? ""
    }
    
    @objc func passwordTextDidChange(_ textField: UITextField) {
        model.password = textField.text ?? ""
    }
}
