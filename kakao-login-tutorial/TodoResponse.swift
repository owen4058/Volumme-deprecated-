//
//  TodoResponse.swift
//  kakao-login-tutorial
//
//  Created by 유욱현 on 2022/08/14.
//

import Foundation

struct TodoResponse: Codable {
    let id : Int
    let userId : String
    let pw : String
    let name : String
    let gender : String
    let phoneNumber : String
    let age : Int
}
