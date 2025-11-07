//
//  Animations.swift
//  SpringApp
//
//  Created by Анастасия Кучер on 29.07.2025.
//

import Foundation
import SpringAnimation

struct Animation {
    
    let animationsName: String
    let animationCurve: String
    let animationForce: CGFloat
    let animationDuration: CGFloat
    let animationDelay: CGFloat
    
    var fullNameAnimations: String {
        String(format: "%@ %@  force: %.2f  duration: %.2f  delay: %.2f", animationsName, animationCurve, animationForce, animationDuration, animationDelay)
    }
}

extension Animation {
    static func getAnimation () -> [Animation] {
        
        var animations: [Animation] = []
        
        let names = DataStore.shared.animationPresets.shuffled()
        let curve = DataStore.shared.animationCurves.shuffled()
        let store = DataStore.shared
        
        let iterationCount = min(names.count, curve.count)
        
        for index in 0..<iterationCount {
            let force: CGFloat    = .random(in: store.forceRange)
            let duration: CGFloat = .random(in: store.durationRange)
            let delay: CGFloat    = .random(in: store.delayRange)
            
            let animation = Animation (
                animationsName: names[index],
                animationCurve: curve[index],
                animationForce: force,
                animationDuration: duration,
                animationDelay: delay
            )
            animations.append(animation)
        }
        
        return animations
    }
}

