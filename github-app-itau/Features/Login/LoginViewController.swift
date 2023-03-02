//
//  LoginViewController.swift
//  github-app-itau
//
//  Created by Michelli Cristina de Paulo Lima on 02/03/23.
//

import UIKit

class LoginViewController: UIViewController {

    var theView: LoginView {
        return view as! LoginView
    }

    override func loadView() {
        view = LoginView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func updateView() {
        theView.viewModel = LoginViewModel()
    }

}
