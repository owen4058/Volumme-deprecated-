//
//  SignInWithAppleController.swift
//  Sign In with Apple
//
//  Created by 양시관 on 2022/08/27.
//

import Foundation
import AuthenticationServices
import SwiftUI

struct AppleIdButton: UIViewRepresentable{
    func makeUIView(context: Context) -> ASAuthorizationAppleIDButton {
        ASAuthorizationAppleIDButton()
    }
    func updateUIView(_ uiView: ASAuthorizationAppleIDButton, context: Context) {
        <#code#>
    }
}


final class SignInWithAppleCoordinator: NSObject{
    
    func getAppleRequest() {
        let appleIdProvider = ASAuthorizationAppleIDProvider()
        let request = appleIdProvider.createRequest()
        request.requestedScopes = [.fullName, .email]
        let authController = ASAuthorizationController(authorizationRequests: [request])
        authController.delegate = self
        authController.performRequests()
        
    }
    private func setUserInfo(for userId: String, fullName: String?, email: String?){
        ASAuthorizationAppleIDProvider().getCredentialState(forUserID: userId){ credentialState,error in
            var authState: String?
            switch credentialState{
            case .authorized: authState = "authorized"
            case .notFound: authState = "notFound"
            case .revoked: authState = "revoked"
            case .transferred: authState = "transferred"

            @unknown default:
                <#fatalError()#>
            }
            let user = User(fullName: fullName ?? "not provided", email: email ?? "not provided", authState: authState ?? "unknown" )
            if let userEncoded = try? JSONEncoder().encode(user){
                UserDefaults.standard.set(userEncoded, forKey: "user")
            }
        }
    }
    
}

extension SignInWithAppleCoordinator: ASAuthorizationControllerDelegate{
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        if let credential = authorization.credential as? ASAuthorizationAppleIDCredential{
           
            let fullName = (credential.fullName?.givenName)! + " " + (credential.fullName?.familyName)!
            setUserInfo(for: credential.user, fullName: fullName, email: credential.email)
        }
    }
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        print("Sign in with Apple ID Error: \(error.localizedDescription)")
    }
}
