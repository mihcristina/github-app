//
//  LoginViewModel.swift
//  github-app-itau
//
//  Created by Michelli Cristina de Paulo Lima on 02/03/23.
//

import Foundation
import UIKit

protocol LoginViewModelProtocol: AnyObject {
    var logo: UIImage { get }
    var loginLabel: String { get }
    var emailLabel: String { get }
    var passwordLabel: String { get }
    var buttonForgotText: String { get }
    var buttonLoginText: String { get }
    var buttonRegiterText: String { get }
}

class LoginViewModel: LoginViewModelProtocol {

    let logo: UIImage
    let loginLabel: String
    let emailLabel: String
    let passwordLabel: String
    let buttonForgotText: String
    let buttonLoginText: String
    let buttonRegiterText: String

    init() {
        logo = UIImage(named: "github") ?? UIImage()
        loginLabel = "Bem Vindx de volta!"
        emailLabel = "Endereço de e-mail"
        passwordLabel = "Senha"
        buttonForgotText = "Esqueceu sua senha?"
        buttonLoginText = "Log in"
        buttonRegiterText = "Não tem uma conta? Cadastre-se"
    }
    
}
