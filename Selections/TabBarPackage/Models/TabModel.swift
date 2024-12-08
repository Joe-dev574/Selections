//
//  TabModel.swift
//  Discipline
//
//  Created by J. DeWeese on 10/30/23.
//

import SwiftUI

/// App Tab's
enum Tab: String, CaseIterable {
    case coffee = "Coffee"
    case Home = "Home"
    case Metrics = "Metrics"
    case settings = "Settings"
    
    var systemImage: String {
        switch self {
        case .coffee:
                    return "mug.fill"
        case .Home:
            return "house.fill"
        case .Metrics:
            return "chart.bar.horizontal.page.fill"
        case .settings:
            return "gear"
        }
    }
    
    var index: Int {
        return Tab.allCases.firstIndex(of: self) ?? 0
    }
}

