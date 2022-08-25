//
//  ContentView.swift
//  kakao-login-tutorial
//
//  Created by 유욱현 on 2022/08/14.
//

import SwiftUI

struct ContentView: View {
    @StateObject var apiClient = ApiClient()

    
    @StateObject var kakaoAuthVM : KakaoAuthVM = KakaoAuthVM()
    
    var body: some View {
        Text("Hello, world!")
            .padding()
        Button("카카오 로그인", action: {
            kakaoAuthVM.handleKakaoLogin()
        })
        Button("카카오 로그아웃", action: {})
        Button(action : {
//            apiClient.loadTodos()
        }, label: {
            Text("유저 정보 가져오기 ")
        })
        Button(action: {
//            kakaoAuthVM.tokenInfo()
            kakaoAuthVM.postTest()
            
        }, label: {
            Text("토큰 보내기")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
