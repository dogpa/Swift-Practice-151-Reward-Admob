//
//  Swift_Practice_151_Reward_AdmobApp.swift
//  Swift Practice 151 Reward Admob
//
//  Created by Dogpa's MBAir M1 on 2022/5/7.
//

import SwiftUI
import GoogleMobileAds

@main
struct Swift_Practice_151_Reward_AdmobApp: App {
    
    
    //初始化Admob
    init(){
        GADMobileAds.sharedInstance().start(completionHandler: nil)
    }
    
//      註解掉的為為參考資源寫法，可以執行。
//    @Environment(\.scenePhase) private var scenePhase
       
       var body: some Scene {
           WindowGroup {
               ContentView()
           }
//           .onChange(of: scenePhase) { (newScenePhase) in
//               if case .active = newScenePhase {
//                   initMobileAds()
//               }
//           }
       }
       
//       func initMobileAds() {
//           GADMobileAds.sharedInstance().start(completionHandler: nil)
//           // comment this if you want SDK Crash Reporting:
//           GADMobileAds.sharedInstance().disableSDKCrashReporting()
//       }
}
