//
//  Model.swift
//  Sign In with Apple
//
//  Created by 양시관 on 2022/08/27.
//

import Foundation


struct User: Codable {
    let fullName, email, authState: String
}
