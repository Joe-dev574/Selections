//
//  ActivityCardView.swift
//  Selections
//
//  Created by Joseph DeWeese on 12/8/24.
//

import SwiftUI


struct Activity {
    let id: Int
    let title: String
    let subtitle: String
    let image: String
    let tintColor: Color
    let amount: String
}
struct ActivityCardView: View {
    @State var activity: Activity
    
    
    var body: some View {
        ZStack {
            Color.init(uiColor: .systemGray6)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .ignoresSafeArea(.all)
            VStack {
                HStack(alignment: .top){
                    VStack(alignment: .leading, spacing: 10) {
                        Text(activity.title)
                        Text(activity.subtitle)
                            .font(.caption)
                    }
                    Spacer()
                    
                    Image(systemName: activity.image)
                        .foregroundStyle(activity.tintColor)
                        .font(.system(size: 30))
                }
                Text("6,722")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
            }
            .padding()
        }
    }
}

#Preview {
    ActivityCardView( activity: Activity(id: 0, title: "Combat Run", subtitle: "2 mionute run, 1 minute shuffle, as far as possible for 15 minutes", image: "figure.run", tintColor: .blue, amount: "15 Minutes"))
}
