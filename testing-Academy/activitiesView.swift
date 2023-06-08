//
//  activitiesView.swift
//  testing-Academy
//
//  Created by Ravi  on 10/24/22.
//

import SwiftUI

let bgImage = Image("activitiesBackground")

let sunflowerActivities = Image("sunflowerActivities")
let trashCan = Image("trashCan")
let plantTree = Image("plantTree")
let steps = Image("steps")

struct activitiesView: View {
    
    @State private var isShowingDetailView = false
    @State private var isShowingGardenModal = false

    
    var body: some View {
        
        ZStack {
            bgImage
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .scaledToFill()
                
            
            VStack {
                HStack {
                    Image("sun")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                }
                
                
                Text("Activities")
                    .font(.title)
                    .fontWeight(.bold)
                
                HStack{
                    NavigationLink(destination: activityStartPageView(), isActive:  $isShowingDetailView) { EmptyView() }
                        
                        Button {
                            let impactMed = UIImpactFeedbackGenerator(style: .medium)
                            impactMed.impactOccurred()
                            isShowingDetailView = true
                        } label: {
                            VStack {
                                sunflowerActivities
                                    .frame(height: 150)
                                Text("Plant a Sunflower")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                                
                            }
                                
                            
                    }//nav link end and label end
                    
                    Spacer()
                        .frame(width: 40.0)
                    
                    NavigationLink(destination: activityStartPageView(), isActive:  $isShowingDetailView) {
                        
                        EmptyView() }
                        
                        Button {
                            let impactMed = UIImpactFeedbackGenerator(style: .medium)
                            impactMed.impactOccurred()
                            isShowingDetailView = true
                        } label: {
                            
                            VStack {
                                trashCan
                                    .frame(height: 150)
                                Text("Pickup Trash")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                            }
   
                           }
                    
                    
                    
                }
                
                
                
                HStack{
                    NavigationLink(destination: activityStartPageView(), isActive:  $isShowingDetailView) { EmptyView() }
                        
                        Button {
                            let impactMed = UIImpactFeedbackGenerator(style: .medium)
                            impactMed.impactOccurred()
                            isShowingDetailView = true
                        } label: {
                            VStack {
                                plantTree
                                    .frame(height: 150)
                                Text("Plant a Tree")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                                
                            }
                                
                            
                    }
                    
                    Spacer()
                        .frame(width: 40.0)
                    
                    NavigationLink(destination: activityStartPageView(), isActive:  $isShowingDetailView) {
                        
                        EmptyView() }
                        
                        Button {
                            let impactMed = UIImpactFeedbackGenerator(style: .medium)
                            impactMed.impactOccurred()
                            isShowingDetailView = true
                        } label: {
                            
                            VStack {
                                steps
                                    .frame(height: 150)
                                Text("Walk 1 KM")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                            }
   
                           }
                     
                    }
                
                Spacer()
                    .frame(minHeight: 10, idealHeight: 100, maxHeight: 600)
                    .fixedSize()
                   
                    
                
                
                
                
                Button {
                    let impactRigid = UIImpactFeedbackGenerator(style: .rigid)
                    impactRigid.impactOccurred()
                    isShowingGardenModal.toggle()
                    
                } label: {
                    Image(systemName: "leaf")
                    Text("Your Garden")
                    
                }
                
                
                .padding(.all, 21.0)
                .foregroundColor(.white)
                .background(Color(red: 0.011764705882352941, green: 0.6627450980392157, blue: 0.0))
                .font(.title2)
                .fontWeight(.bold)
                .cornerRadius(8)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                
                
                .fullScreenCover(isPresented: $isShowingGardenModal) {
                    VStack {
                        gardenView()
                        
                      
                    }
                }//end of sheet
              

                Spacer()

                   
                
                

                                    
            }                  .navigationBarBackButtonHidden(true)
            
        }
        
    }
}

struct activitiesView_Previews: PreviewProvider {
    static var previews: some View {
        activitiesView()
    }
}
