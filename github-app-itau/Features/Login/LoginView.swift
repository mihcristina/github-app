//
//  LoginView.swift
//  github-app-itau
//
//  Created by Michelli Cristina de Paulo Lima on 02/03/23.
//

import UIKit
import SnapKit

class LoginView: UIView {

    var viewModel: LoginViewModelProtocol? {
        didSet {
            update()
        }
    }

    let logo: UIImageView
    let loginLabel: UILabel
    let emailLabel: UILabel
    let emailTextField: UITextField
    let passwordLabel: UILabel
    let forgotpasswordButton: UIButton
    let passwordTextField: UITextField
    let loginButton: UIButton
    let registerButton: UIButton

    override init(frame: CGRect) {
        logo = UIImageView()
        loginLabel = UILabel()
        emailLabel = UILabel()
        emailTextField = UITextField()
        passwordLabel = UILabel()
        forgotpasswordButton = UIButton()
        passwordTextField = UITextField()
        loginButton = UIButton()
        registerButton = UIButton()
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func update() {
        guard let viewModel = viewModel else { return }
        logo.image = viewModel.logo
        loginLabel.text = viewModel.loginLabel
        emailLabel.text = viewModel.emailLabel
        passwordLabel.text = viewModel.passwordLabel
        forgotpasswordButton.setTitle(viewModel.buttonForgotText, for: .normal)
        loginButton.setTitle(viewModel.buttonLoginText, for: .normal)
        registerButton.setTitle(viewModel.buttonRegiterText, for: .normal)
    }

}

extension LoginView: ViewCodable {

    func buildHierarchy() {
        self.addSubview(logo)
        self.addSubview(loginLabel)
        self.addSubview(emailLabel)
        self.addSubview(emailTextField)
        self.addSubview(passwordLabel)
        self.addSubview(forgotpasswordButton)
        self.addSubview(passwordTextField)
        self.addSubview(loginButton)
        self.addSubview(registerButton)
    }

    func buildConstraints() {
        logo.snp.makeConstraints { (make) -> Void in
            make.width.height.equalTo(50)
            make.center.equalTo(self)
        }
    }

    func render() {
        
    }

}
