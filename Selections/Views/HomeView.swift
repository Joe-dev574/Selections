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
    
    var mockActivities = [
        Activity(id: 0, title: "Workout", subtitle: "HIIT Training", image: "figure.highintensity.intervaltraining", tintColor: .blue, amount: "1.25 hours"),
        Activity(id: 1, title: "Workout", subtitle: "HIIT Training", image: "figure.highintensity.intervaltraining", tintColor: .blue, amount: "1.25 hours"),
        Activity(id: 2, title: "Workout", subtitle: "HIIT Training", image: "figure.highintensity.intervaltraining", tintColor: .blue, amount: "1.25 hours"),
        Activity(id: 3, title: "Workout", subtitle: "HIIT Training", image: "figure.highintensity.intervaltraining", tintColor: .blue, amount: "1.25 hours"),
        Activity(id: 4, title: "Workout", subtitle: "HIIT Training", image: "figure.highintensity.intervaltraining", tintColor: .blue, amount: "1.25 hours")
    ]
   
   
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
                        ProgressCircleView(progress: $calories, color: .red, goal: 600)
                          
                        ProgressCircleView(progress: $active, color: .green, goal: 60)
                            .padding(.all, 20)
                        ProgressCircleView(progress: $calories, color: .blue, goal: 700)
                            .padding(.all, 40)
                        
                        }
                    .padding(.horizontal)
                     Spacer( )
                }
                .padding()
                
                HStack{
                    Text("Fitness Activity")
                        .font(.title2)
                    Spacer()
                    
                    Button{
                        print("show more")
                    } label: {
                        Text("Show More")
                            .padding()
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                            .background(Color.blue.gradient)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                .padding(.horizontal)
                
                LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)){
                    ForEach(mockActivities, id: \.id) { activity in
                        ActivityCardView(activity: activity)
                          
                    }
                    .padding(.horizontal, 4)
                 
                }
                    
                }
                }
            }
        }

#Preview {
    HomeView()
}
