//
//  Animation.swift
//  AnimateHomeWorc
//
//  Created by Максим Гурков on 13.04.2022.
//


struct Animation {
    
    var animation: String
    var curve: String
    var force: Double
    var duration: Double
    var delay: Double
    
    static var animationModel: Animation {
        Animation(animation: DataManager.data.nameAnimation.randomElement() ?? "",
                  curve: DataManager.data.curveName.randomElement() ?? "",
                  force: DataManager.data.valueForce.randomElement() ?? 0.0,
                  duration: DataManager.data.valueDuration.randomElement() ?? 0.0,
                  delay: DataManager.data.valueDelay.randomElement() ?? 0.0)
    }
}



