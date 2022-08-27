//
//  ViewModel.swift
//  Sign In with Apple
//
//  Created by 양시관 on 2022/08/27.
//

import Foundation


final class ViewModel: ObservableObject{
    private lazy var signInWithApple = SignInWithAppleCoordinator()
    @Published var user: User?
    
    func getRequest(){
        signInWithApple.getAppleRequest()
    }
    
    func getUserInfo(){
        if let userData = UserDefaults.standard.object(forKey: "user") as? Data,
           let userDecoded = try? JSONDecoder().decode(User.self, from: userData){
            user = userDecoded
        }
    }
}
