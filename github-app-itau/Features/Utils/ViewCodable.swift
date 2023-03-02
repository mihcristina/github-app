//
//  ViewCodable.swift
//  github-app-itau
//
//  Created by Michelli Cristina de Paulo Lima on 02/03/23.
//

import Foundation

public protocol ViewCodable {
    func configure()
    func buildHierarchy()
    func buildConstraints()
    func render()
    func setUpView()
}

extension ViewCodable {

    func setUpView() {
        configure()
        buildHierarchy()
        buildConstraints()
        render()
    }

    func configure() { }

}
