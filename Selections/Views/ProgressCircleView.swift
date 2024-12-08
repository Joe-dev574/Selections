//
//  ProgressCircleVioew.swift
//  Selections
//
//  Created by Joseph DeWeese on 12/8/24.
//

import SwiftUI

struct ProgressCircleView: View {
    @Binding var progress: Int
    var color: Color
    var goal: Int
    private let width: CGFloat = 20
    
    
    var body: some View {
        ZStack{
            ZStack{
                Circle()
                    .stroke(color, lineWidth: width)
                Circle( )
                    .trim(from: 0, to: CGFloat(progress) / CGFloat(goal))
                    .stroke(color, style: StrokeStyle(lineWidth: width, lineCap: .round))
                    .rotationEffect(.degrees(-90))
                    .shadow(radius: 5)
            }
            .padding()
        }
    }
}
