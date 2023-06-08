//
//  sunflowerCompletedView.swift
//  testing-Academy
//
//  Created by Ravi  on 10/26/22.
//

import SwiftUI

let bgCompleted = Image("completedBackground")

struct sunflowerCompletedView: View {
    

    
    var body: some View {
        
            ZStack{
                bgCompleted
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .scaledToFill()
                
                HStack {
                    
                    VStack {
                        Text("Congrats!")
                            .fontWeight(.bold)
                            .font(.title)
                      
                            
                        
                        Spacer()
                        
                        Image("sunflowerCompletedFlower")
                            .padding(.leading)
                        Image("sunflowerCompletedChat")
                        
                        
                        Spacer()
                        
                        
                        
                      
                

                    }//vstack
                    
                  

                }//HStack
                .frame(minWidth: 0, maxHeight: 600)
                
                

                
            }//zstack
            .frame(minWidth: 0, maxHeight: 600)

            
            
        
    } //body

} //view

struct sunflowerCompletedView_Previews: PreviewProvider {
    static var previews: some View {
        sunflowerCompletedView()
    }
}


