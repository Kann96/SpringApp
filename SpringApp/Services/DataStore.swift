//
//  DataStore.swift
//  SpringApp
//
//  Created by Анастасия Кучер on 29.07.2025.
//

import CoreGraphics

final class DataStore {
    static let shared = DataStore()
    
    public enum AnimationPreset: String, CaseIterable {
        case pop
        case slideLeft
        case slideRight
        case slideDown
        case slideUp
        case squeezeLeft
        case squeezeRight
        case squeezeDown
        case squeezeUp
        case fadeIn
        case fadeOut
        case fadeOutIn
        case fadeInLeft
        case fadeInRight
        case fadeInDown
        case fadeInUp
        case zoomIn
        case zoomOut
        case fall
        case shake
        case flipX
        case flipY
        case morph
        case squeeze
        case flash
        case wobble
        case swing
    }

    public enum AnimationCurve: String, CaseIterable {
        case easeIn
        case easeOut
        case easeInOut
        case linear
        case spring
        case easeInSine
        case easeOutSine
        case easeInOutSine
        case easeInQuad
        case easeOutQuad
        case easeInOutQuad
        case easeInCubic
        case easeOutCubic
        case easeInOutCubic
        case easeInQuart
        case easeOutQuart
        case easeInOutQuart
        case easeInQuint
        case easeOutQuint
        case easeInOutQuint
        case easeInExpo
        case easeOutExpo
        case easeInOutExpo
        case easeInCirc
        case easeOutCirc
        case easeInOutCirc
        case easeInBack
        case easeOutBack
        case easeInOutBack
    }
    
    let animationPresets = AnimationPreset.allCases.map { $0.rawValue }
    let animationCurves = AnimationCurve.allCases.map { $0.rawValue }
    
    
    private init() {}

    let forceRange: ClosedRange<CGFloat> = 0.5...1.5
    let durationRange: ClosedRange<CGFloat> = 0.5...1.5
    let delayRange: ClosedRange<CGFloat> = 0.0...0.2
    
}


