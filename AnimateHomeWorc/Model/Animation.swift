//
//  Animation.swift
//  AnimateHomeWorc
//
//  Created by Максим Гурков on 13.04.2022.
//


struct Animation {
    
    var animation: String {
        let name =  DataManager.data.nameAnimation.randomElement()
        return name ?? ""
    }
    var curve: String {
        let curve = DataManager.data.curveName.randomElement()
        return curve ?? ""
    }
    
    var force: Double {
        let force = DataManager.data.valueForce.randomElement()
        return force ?? 0.0
    }
    
    var duration: Double {
      let duration = DataManager.data.valueDuration.randomElement()
        return duration ?? 0.0
    }
    
    var delay: Double {
        let delay = DataManager.data.valueDelay.randomElement()
        return delay ?? 0.0
    }
}



