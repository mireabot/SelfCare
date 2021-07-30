//
//  OnboardingModel.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 29.07.2021.
//

import Foundation
import SwiftUI


struct OnboardingItems: Identifiable {
    let id = UUID().uuidString
    let image: String
    let title: String
    let subtitle: String
}

let data = [
    OnboardingItems(image: "Onboard1", title: "Discover Top Doctors", subtitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus lacinia libero ut metus convallis tempor. Vestibulum consequat, tortor mattis consequat"),
    OnboardingItems(image: "Onboard2", title: "Ask a Doctor Online", subtitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus lacinia libero ut metus convallis tempor. Vestibulum consequat, tortor mattis consequat"),
    OnboardingItems(image: "Onboard3", title: "Get Expert Advice", subtitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus lacinia libero ut metus convallis tempor. Vestibulum consequat, tortor mattis consequat")
]

