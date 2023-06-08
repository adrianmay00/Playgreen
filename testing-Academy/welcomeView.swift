//
//  welcomeView.swift
//  testing-Academy
//
//  Created by Ravi on 10/18/22.
//

import SwiftUI


let backgroundImage = Image("Background")

let worldButton = Image("welcomeWorld")


struct welcomeView: View {
    
    @State private var isShowingDetailView = false

    
    var body: some View {
        
        NavigationView {

                    ZStack {
                        backgroundImage.edgesIgnoringSafeArea(.all)
                        
                        
                        VStack {
                            
                            Image("welcomeText")
                                .padding(.bottom, 60.0)
                                
                            
                            NavigationLink(destination: activitiesView(), isActive:  $isShowingDetailView) { EmptyView() }
                            
                                
                            Button {
                                let impactHeavy = UIImpactFeedbackGenerator(style: .heavy)
                                impactHeavy.impactOccurred()
                                isShowingDetailView = true
                                
                            } label: {
                                worldButton    .resizable()
                                    .frame(width: 250.0, height: 250.0)
                                
                            }
                          
                            Image("arrowUp")
                                .padding(.top, 15.0)
                                
                               
                        
                        }

                        
                        
                    }
            
                   

        }
    }
}



struct welcomeView_Previews: PreviewProvider {
    static var previews: some View {
        welcomeView()
    }
}
