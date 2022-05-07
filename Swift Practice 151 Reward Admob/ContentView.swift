//
//  ContentView.swift
//  Swift Practice 151 Reward Admob
//
//  Created by Dogpa's MBAir M1 on 2022/5/7.
//ca-app-pub-3940256099942544~1458002511 官方
//ca-app-pub-5065946131758358~7422869846 個人

import SwiftUI

struct ContentView: View {
    
    //定義獎勵值開始為0
    @State var collectedDiamonds: Int = 0
        
        //準備RewardedAd使用
        var rewardAd: RewardedAd
            
        //初始化讀取rewardAd
        init(){
            self.rewardAd = RewardedAd()
            rewardAd.load()
        }
        
        var body: some View {
            VStack{
                Spacer()
                Text("獎勵點：\(collectedDiamonds)")
                    .font(.system(size: 30))
                Spacer()
                
                //按下按鈕時跳出獎勵式廣告，等到看完廣告後獎勵值加一，若未看完就離開則不會加一
                Button(action: {
                    self.rewardAd.showAd(rewardFunction: { 
                      self.collectedDiamonds += 1
                        
                    })
                    
                }) {
                    Text("點我看廣告")
                        .foregroundColor(.black)
                        .padding()
                }
                .frame(width: 350, height: 70, alignment: .center)
                .background(Capsule().fill(Color.cyan))
                
                //因為可能會遇到使用者沒看廣告就跳出，加上Google有說明在跳出廣告前須先載入廣告
                //所以放在button的onAppear來加載廣告，這樣不管是否有看完廣告拿到獎勵都會加載下一個廣告
                
                .onAppear {
                    self.rewardAd.load()
                }
                
                Spacer()
            }

        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
