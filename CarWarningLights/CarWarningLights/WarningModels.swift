//
//  WarningModels.swift
//  CarWarningLights
//
//  Created by 박지은 on 2023/07/12.
//

import Foundation

struct warningModels {
    var rectangleColor: Color
    let symbols: Image
    let symbolName: String
}

var warningLights: [warningModels] = [
    warningModels(rectangleColor: .red, symbols: Image(systemName: "exclamationmark.brakesignal"), symbolName: "브레이크 경고등"),
    warningModels(rectangleColor: .red, symbols: Image(systemName: "minus.plus.batteryblock.exclamationmark"), symbolName: "충전 경고등"),
    warningModels(rectangleColor: .orange, symbols: Image(systemName: "steeringwheel.exclamationmark"), symbolName: "전동 파워 스티어링 경고등"),
    warningModels(rectangleColor: .orange, symbols: Image(systemName: "exclamationmark.triangle"), symbolName: "마스터 경고등"),
    warningModels(rectangleColor: .blue, symbols: Image(systemName: "thermometer.and.liquid.waves"), symbolName: "저수온 표시등"),
    warningModels(rectangleColor: .blue, symbols: Image(systemName: "headlight.high.beam.fill"), symbolName: "전조등 상향 표시등"),
    warningModels(rectangleColor: .green, symbols: Image(systemName: "questionmark.key.filled"), symbolName: "KEY 경고 표시등"),
    warningModels(rectangleColor: .green, symbols: Image(systemName: "parkinglight"), symbolName: "차폭등 미등 표시등")

]
