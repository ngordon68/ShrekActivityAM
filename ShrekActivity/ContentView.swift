//
//  ContentView.swift
//  ShrekActivity
//
//  Created by Nick Gordon on 11/13/23.
//

import SwiftUI

struct FoodModel: Identifiable {
    var id = UUID()
    var foodName: String
    var foodImage: String
}


struct ShrekView: View {
    
    var listOfFoods:[FoodModel] = [
    
    FoodModel(foodName: "Slugs", foodImage: "🐌"),
    FoodModel(foodName: "Eyeballs", foodImage: "👁️")
    ]
    
//    var listOFFoods:[String] = [
//       "Slugs 🐌",
//       "Eyeballs 👁️",
//       "Onions 🧅",
//       "Mud 💩"
//    
//    ]
    
    var body: some View {
        
      
            
            ZStack {
                Color.blue
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack {
                    Text("Shrek todo list")
                        .bold()
                    
                    Image("shrek")
                        .resizable()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .overlay(Circle().stroke(Color(.white), lineWidth: 5))
                        .scaledToFit()
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        
                      
                        List{
                            
                            Section(header:

                                    HStack {
                                Image(systemName: "fork.knife")
                                Text("foods to eat")
                                Spacer()
                                Image(systemName: "chevron.down")
                                   
                            }
                            
                            )
                            {
//                                Text("Slugs 🐌")
//                                Text("Eyeballs 👁️")
//                                Text("Onions 🧅")
                                ForEach(listOfFoods) { food in
                                    HStack {
                                        Text(food.foodName)
                                            .bold()
                                        
                                        Text(food.foodImage)
                                        
                                    }
                                }
                            }
                            
                            
                            Section(header:
                                        
                                        
                                        HStack {
                                    Image(systemName: "theatermasks.fill")
                                    Text("Places to visit")
                                    Spacer()
                                    Image(systemName: "chevron.down")
                                       
                                }
                            
                            )
                            {
                                Text("Far Far Away 🏰")
                                Text("Potion Factory 🧪")
                                Text("Burger Prince 🍔")
                            }
                           
                            }
                            
                        }
                        
                    }
                    
                }
        

        }
    }


#Preview {
    ShrekView()
}
