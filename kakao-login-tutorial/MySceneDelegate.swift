//
//  MySceneDelegate.swift
//  Volumme
//
//  Created by 유욱현 on 2022/08/14.
//

import Foundation
import KakaoSDKAuth
import UIKit


class MySceneDelegate: UIResponder, UIWindowSceneDelegate {

    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        if let url = URLContexts.first?.url {
            if (AuthApi.isKakaoTalkLoginUrl(url)) {
                _ = AuthController.handleOpenUrl(url: url)
            }
        }
    }
    
}
