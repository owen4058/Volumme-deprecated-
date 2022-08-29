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
//                        self.post(oauthToken: oauthToken?.idToken)
                        self.postBodyJsonRequest(idtoken: oauthToken?.idToken)
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
    
    
    func post(oauthToken : String?) {
        let turl = "https://ptsv2.com/t/av1gr-1661706569/post"
        
        var request = URLRequest(url: Foundation.URL(string: turl)!)
            request.httpMethod = "POST"
            request.setValue("key", forHTTPHeaderField: oauthToken!)
            request.timeoutInterval = 100
            
            // POST 로 보낼 정보
            let params = ["nickName":"cat",
                          "isNewbie":"true",
                          "gender":"female",
                          "height":170,
                          "weight":60,
                          "bodyFatPer":0.05,
                          "musclePer":95.5] as Dictionary
        

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
                    print("POST 방식 성공")
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
        request.setValue("App", forHTTPHeaderField: "Content-Type")
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
    func postBodyJsonRequest(idtoken : String?){
         
         /*
         // -----------------------------------------
         [postBodyJsonRequest 메소드 설명]
         // -----------------------------------------
         1. 사전 spm 매니저 사용해 Alamofire 라이브러리 설치 필요 :
            https://github.com/Alamofire/Alamofire
         // -----------------------------------------
         2. http 허용 info plist : App Transport Security Settings >> Allow Arbitrary Loads >> YES
         // -----------------------------------------
         3. import 추가 : import Alamofire
         // -----------------------------------------
         */
         
         
         // [http 요청 주소 지정]
         let url = "https://ptsv2.com/t/av1gr-1661706569/post"
         
         
         // [http 요청 헤더 지정]
         let header : HTTPHeaders = [
             "idtoken" : idtoken!
         ]
         
         
         // [http 요청 파라미터 지정 실시]
         let bodyData : Parameters = [
             "userId" : 1,
             "id" : 1
         ]
         
         
         // [http 요청 수행 실시]
         print("")
         print("====================================")
         print("[ >> postBodyJsonRequest() :: Post Body Json 방식 http 요청 실시]")
         print("-------------------------------")
         print("주 소 :: ", url)
         print("-------------------------------")
         print("데이터 :: ", bodyData.description)
         print("====================================")
         print("")
         
         AF.request(
             url, // [주소]
             method: .post, // [전송 타입]
             parameters: bodyData, // [전송 데이터]
             encoding: JSONEncoding.default, // [인코딩 스타일]
             headers: header // [헤더 지정]
         )
         .validate(statusCode: 200..<300)
         .responseData { response in
             switch response.result {
             case .success(let res):
                 do {
                     print("")
                     print("====================================")
                     print("[ >> postBodyJsonRequest() :: Post Body Json 방식 http 응답 확인]")
                     print("-------------------------------")
                     print("응답 코드 :: ", response.response?.statusCode ?? 0)
                     print("-------------------------------")
                     print("응답 데이터 :: ", String(data: res, encoding: .utf8) ?? "")
                     print("====================================")
                     print("")
                     
                     // [비동기 작업 수행]
                     DispatchQueue.main.async {
                         
                     }
                 }
                 catch (let err){
                     print("")
                     print("====================================")
                     print("[ >> postBodyJsonRequest() :: Post Body Json 방식 http 응답 확인]")
                     print("-------------------------------")
                     print("catch :: ", err.localizedDescription)
                     print("====================================")
                     print("")
                 }
                 break
             case .failure(let err):
                 print("")
                 print("====================================")
                 print("[ >> postBodyJsonRequest() :: Post Body Json 방식 http 요청 실패]")
                 print("-------------------------------")
                 print("응답 코드 :: ", response.response?.statusCode ?? 0)
                 print("-------------------------------")
                 print("에 러 :: ", err.localizedDescription)
                 print("====================================")
                 print("")
                 break
             }
         }
     }
}
