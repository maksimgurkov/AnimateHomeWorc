//
//  DataManager.swift
//  AnimateHomeWorc
//
//  Created by Максим Гурков on 13.04.2022.
//

class DataManager {
    
    static let data = DataManager()
    
    let nameAnimation = ["shake", "pop", "morph",
                         "squeeze", "wobble", "swing",
                         "flipX", "flipY", "fall",
                         "squeezeLeft", "squeezeRight", "squeezeDown"]
    
    let curveName = ["spring", "linear", "easeIn",
                     "easeOut", "easeInOut"]
    
    let valueDuration = [1.2, 0.9, 1.6, 0.5, 1.7, 1.0]
    
    let valueForce = [1.3, 0.8, 1.5, 0.8, 1.2, 1.0]
    
    let valueDelay = [1.0, 0.30, 0.50, 0.60, 0.20, 0.40]
    
    private init() {}
}
