//
//  HomeView.swift
//  Selections
//
//  Created by Joseph DeWeese on 12/8/24.
//

import SwiftUI

struct HomeView: View {
    @State var calories: Int = 123
    @State var active: Int = 53
    @State var idle: Int = 8
    
   
   
    var body: some View {
        
        ScrollView(showsIndicators: false){
            VStack {
                Text("Welcome to Selections")
                    .font(.largeTitle)
                    .padding()
                
                HStack{
                    Spacer( )
                    VStack {
                        VStack(alignment: .leading, spacing: 8){
                            Text("Calories")
                                .font(.callout)
                                .fontWeight(.bold)
                                .foregroundStyle(.red)
                                Text("1230 Cal")
                                .fontWeight(.bold)
                        }.padding(.bottom)
                        VStack(alignment: .leading, spacing: 8){
                            Text("Active")
                                .font(.callout)
                                .fontWeight(.bold)
                                .foregroundStyle(.green)
                            Text("1.5 Hours")
                                .fontWeight(.bold)
                        }.padding(.bottom)
                        VStack(alignment: .leading, spacing: 8){
                            Text("Idle")
                                .font(.callout)
                                .fontWeight(.bold)
                                .foregroundStyle(.blue)
                            Text("10 Hours")
                                .fontWeight(.bold)
                        }
                        
                    }
                    Spacer( )
                    
                    ZStack{
                        ProgressCircleView(progress: $calories, color: .red, goal: 100)
                          
                        ProgressCircleView(progress: $active, color: .green, goal: 60)
                            .padding(.all, 20)
                        ProgressCircleView(progress: $calories, color: .blue, goal: 700)
                            .padding(.all, 40)
                        
                        }
                    .padding(.horizontal)
                     Spacer( )
                }
                .padding()
                }
            }
        }
}
#Preview {
    HomeView()
}
