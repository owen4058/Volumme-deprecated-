//
//  KaKaoAuthVM.swift
//  kakao-login-tutorial
//
//  Created by 유욱현 on 2022/08/14.
//

import Foundation
import Combine
import KakaoSDKAuth
import KakaoSDKUser
import Alamofire



//final public class AuthApi {
//    static let authapi = AuthApi()
//    public struct OAuthToken : Codable {
//        public let accessToken: String
//
//    }
//
//
//    private init() {}
//}

//final public class myUserApi {
//
//    public static let shared: UserApi
//
//}


class KakaoAuthVM : ObservableObject {
    
    func handleKakaoLogin() {
        // 카카오톡 설치 여부 확인
        if (UserApi.isKakaoTalkLoginAvailable()) {
            
            //카카오 앱을 통해 로그인 - 설치 O
            UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                if let error = error {
                    print(error)
                }
                else {
                    print("loginWithKakaoTalk() success.")

                    //do something
                    _ = oauthToken
//                    print("oauth token : \(oauthToken)")
                }
            }
        } else {  // 설치 X
            // 카카오 웹뷰로 로그인
            UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
                    if let error = error {
                        print(error)
                    }
                    else {
                        print("loginWithKakaoAccount() success.")

                        //do something
                        _ = oauthToken
                        print("oauth token : \(oauthToken)")
                    }
                }
        }
    }
    
    func tokenInfo() {
        // 사용자 엑세스 토큰 정보 조회(캐시에 저장하여 사용중인 토큰)
        UserApi.shared.accessTokenInfo {(accessTokenInfo, error) in
            if let error = error {
                print(error)
            }
            else {
                print("엑세스 토큰 정보 가져오기 성공")
                _ = accessTokenInfo
            }
        }
    }
    
    
    func postTest() {
        let result = UserApi.isKakaoTalkLoginAvailable()
        print("oauthToken : \(result)")
        
        var request = URLRequest(url: Foundation.URL(string: url)!)
            request.httpMethod = "POST"
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.timeoutInterval = 10
            
            // POST 로 보낼 정보
            let params = ["id":"아이디", "pw":"패스워드"] as Dictionary

            // httpBody 에 parameters 추가
        // id token, jwt 보내기, bearer
            do {
                try request.httpBody = JSONSerialization.data(withJSONObject: params, options: [])
            } catch {
                print("http Body Error")
            }
            
            AF.request(request).responseString { (response) in
                switch response.result {
                case .success:
                    print("POST 성공")
                case .failure(let error):
                    print("🚫 Alamofire Request Error\nCode:\(error._code), Message: \(error.errorDescription!)")
                }
            }
    }
    
    
    func post() {
//        let jToken = UserApi.shared.loginWithKakaoTalk { (oauthToken, error) -> Void in
//            let dicData : Dictionary<String, Any> = [String : Any]()
//            if oauthToken != nil {
//                do {
////                    let jToken = try JSONSerialization.data(withJSONObject: dicData)
////                    print("dicData : \(dicData)")
////                    let aToken.acToken = oauthToken?.accessToken
//                }
//                catch { print(error) }
//            } else {
//                print(error)
//            }
//        }
        
        let result = UserApi.isKakaoTalkLoginAvailable()
        print("oauthToken : \(result)")

        
        var request = URLRequest(url: Foundation.URL(string: url)!)
            request.httpMethod = "POST"
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.timeoutInterval = 10
            
            // POST 로 보낼 정보
            let params = ["id":"아이디", "pw":"패스워드"] as Dictionary

            // httpBody 에 parameters 추가
        // id token, jwt 보내기, bearer
            do {
                try request.httpBody = JSONSerialization.data(withJSONObject: params, options: [])
                
                
            } catch {
                print("http Body Error")
            }
        AF.request(request as URLRequestConvertible).responseString { (response) in
                switch response.result {
                case .success:
                    print("POST 성공")
                case .failure(let error):
                    print("🚫 Alamofire Request Error\nCode:\(error._code), Message: \(error.errorDescription!)")
                }
            }
    }
    
    
    func tokenTest(oauthToken : UserApi) {
        //token 내용 출려
//                let result = UserApi.isKakaoTalkLoginAvailable()
//                print("oauthToken : \(result)")

        
         
        
        var request = URLRequest(url: Foundation.URL(string: url)!)
            request.httpMethod = "POST"
        request.setValue(oauthToken.idToken, forHTTPHeaderField: "Content-Type")
            request.timeoutInterval = 10
            
            // POST 로 보낼 정보
            let params = ["id":"아이디", "pw":"패스워드"] as Dictionary

            // httpBody 에 parameters 추가
        // id token, jwt 보내기, bearer
            do {
                try request.httpBody = JSONSerialization.data(withJSONObject: params, options: [])
            } catch {
                print("http Body Error")
            }
            
            AF.request(request).responseString { (response) in
                switch response.result {
                case .success:
                    print("POST 성공")
                case .failure(let error):
                    print("🚫 Alamofire Request Error\nCode:\(error._code), Message: \(error.errorDescription!)")
                }
            }
    }
    
}
