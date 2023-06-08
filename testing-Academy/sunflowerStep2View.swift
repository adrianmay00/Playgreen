//
//
//  sunflowerStep2View.swift
//  testing-Academy
//
//  Created by Ravi  on 10/25/22.
//


import SwiftUI

struct sunflowerStep2View: View {
    

    
    var body: some View {
        
            ZStack{
                bgStepsImage
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .scaledToFill()
                
                HStack {
                    
                    VStack {
                        Text("Plant a Sunflower")
                            .fontWeight(.light)
                            .font(.title)
                        Text("Step 2")
                            .fontWeight(.bold)
                            .font(.title)
                        
                        Spacer()
                        
                        Image("step2Image")
                        
                        
                        Spacer()
                        
                        
                        
                      
                

                    }//vstack
                    
                  

                }//HStack
                .frame(minWidth: 0, maxHeight: 600)
                
                

                
            }//zstack
            .frame(minWidth: 0, maxHeight: 600)

            
            
        
    } //body

} //view

struct sunflowerStep2View_Previews: PreviewProvider {
    static var previews: some View {
        sunflowerStep2View()
    }
}
