//
//  ContentView.swift
//  CarWarningLights
//
//  Created by 박지은 on 2023/07/12.
//
//Issue01. tabview icon 색상 모두 다르게 변경하고싶다!

import SwiftUI
import FirebaseCore
import Combine
import FirebaseAnalyticsSwift

struct warningModels {
    var rectangleColor: Color
    let symbols: Image
    let symbolName: String
}

struct ModalView: View {
    
    var body: some View {
        
        Text("")
        
//        var redLights: [warningModels]
        
//        VStack {
//            redLights[index].symbols
//                .resizable()
//                .scaledToFit()
//                .frame(width: 40, height: 40)
//            Text(redLights[index].symbolName)
//        }
    }
}




struct ContentView: View {
    
    @State private var showSheet = false

    
    var redLights: [warningModels] = [
        warningModels(rectangleColor: .red, symbols: Image(systemName: "exclamationmark.brakesignal"), symbolName: "브레이크 경고등"),
        warningModels(rectangleColor: .red, symbols: Image(systemName: "minus.plus.batteryblock.exclamationmark"), symbolName: "충전 경고등 테스트")
    ]
    
    var orangeLights: [warningModels] = [
        warningModels(rectangleColor: .orange, symbols: Image(systemName: "steeringwheel.exclamationmark"), symbolName: "전동 파워 스티어링 경고등"),
        warningModels(rectangleColor: .orange, symbols: Image(systemName: "exclamationmark.triangle"), symbolName: "마스터 경고등")
    ]
    
    var blueLights: [warningModels] = [
        warningModels(rectangleColor: .blue, symbols: Image(systemName: "thermometer.and.liquid.waves"), symbolName: "저수온 표시등"),
        warningModels(rectangleColor: .blue, symbols: Image(systemName: "headlight.high.beam"), symbolName: "전조등 상향 표시등")
    ]
    
    var greenLights: [warningModels] = [
        warningModels(rectangleColor: .green, symbols: Image(systemName: "questionmark.key.filled"), symbolName: "KEY 경고 표시등"),
        warningModels(rectangleColor: .green, symbols: Image(systemName: "parkinglight"), symbolName: "차폭등 미등 표시등")
    ]
    
    var body: some View {
        
        TabView() {
            ScrollView {
                LazyVGrid(columns: [GridItem(),
                                    GridItem()
                                   ], content: {
                    ForEach(0..<2) { index in
                        
                        Button(action: {
                            self.showSheet = true
                        }, label: {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 170, height: 120)
                                .foregroundColor(redLights[index].rectangleColor)
                                .overlay(
                                    VStack {
                                        redLights[index].symbols
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 40, height: 40)
                                        Text(redLights[index].symbolName)
//                                            .foregroundColor(.white)
                                    }
                                        .foregroundColor(.white)

                                )
                            
                        })
                        .sheet(isPresented: self.$showSheet, content: {
                            ModalView()
                                .presentationDetents([.medium])
                            
                        }
                               //
                               
                               
                        )
                    }
                })
                          }
            .tabItem {
//                CustomTabItem(imageName: "exclamationmark.triangle", title: "위험", color: .red)
                    Image(systemName: "exclamationmark.triangle")
//                    .accentColor(Color.tabRed)
                    
                    Text("위험")
            }
//            .tint(.red)
//            .foregroundColor(.red)
//            .tag()
//            .accentColor(.red)
            
//            .accentColor(Color.tabRed)
            ScrollView {
                LazyVGrid(columns: [GridItem(),
                                    GridItem()
                                   ], content: {
                    ForEach(0..<2) { index in
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 170, height: 120)
                            .foregroundColor(orangeLights[index].rectangleColor)
                            .overlay(
                                VStack() {
                                    orangeLights[index].symbols
                                        .resizable()
                                        .scaledToFit()
//                                        .foregroundColor(.white)
                                        .frame(width: 30, height: 30)
//                                        .foregroundColor(.white)
                                    Text(orangeLights[index].symbolName)
                                }
                            )
                    }
                })
            }
                .tabItem({
                    Image(systemName: "exclamationmark.triangle")
                    Text("주의")

                })
            ScrollView {
                LazyVGrid(columns: [GridItem(),
                                    GridItem()
                                   ], content: {
                    ForEach(0..<2) { index in
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 170, height: 120)
                            .foregroundColor(blueLights[index].rectangleColor)
                            .overlay(
                                VStack {
                                    blueLights[index].symbols
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30, height: 30)
                                    Text(blueLights[index].symbolName)
                                }
                            )
                    }
                })
            }
                .tabItem({
                    Image(systemName: "exclamationmark.triangle")
                    Text("정상 작동, 그러나")
                })
            ScrollView {
                LazyVGrid(columns: [GridItem(),
                                    GridItem()
                                   ], content: {
                    ForEach(0..<2) { index in
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 170, height: 120)
                            .foregroundColor(greenLights[index].rectangleColor)
                            .overlay(
                                VStack {
                                    greenLights[index].symbols
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30, height: 30)
                                    Text(greenLights[index].symbolName)
                                }
                            )
                    }
                })
            }
                .tabItem({
                    Image(systemName: "exclamationmark.triangle")
                    Text("정상 작동")
                }).analyticsScreen(name: "\(ContentView.self)")
                          }

        
        }

    
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
