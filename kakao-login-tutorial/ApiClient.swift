//
//  ApiClient.swift
//  kakao-login-tutorial
//
//  Created by 유욱현 on 2022/08/14.
//

import Foundation
import Combine
import Alamofire
import KakaoSDKAuth

class ApiClient: ObservableObject {
    var cancellable: AnyCancellable?
    
    let api = API()
    
    func loadTodos() {
        cancellable = api.loadTodos()
            .sink(receiveCompletion: {result in
                switch result {
                case .finished:
                    print("finished")
                case .failure(let err):
                    print("failed \(err)")
                }
            }, receiveValue: { todos in
                print("receivedValue : users: \(todos)")
            })
    }
}
