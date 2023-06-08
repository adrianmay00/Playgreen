//
//  sunflowerStep4View.swift
//  testing-Academy
//
//  Created by Ravi  on 10/26/22.
//

import SwiftUI

struct sunflowerStep4View: View {
    

    
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
                        Text("Step 4")
                            .fontWeight(.bold)
                            .font(.title)
                        
                        Spacer()
                        
                        Image("step4Image").padding(.top, 20.0)
                        
                        
                        Spacer()
                        
                        
                        
                      
                

                    }//vstack
                    
                  

                }//HStack
                .frame(minWidth: 0, maxHeight: 600)
                
                

                
            }//zstack
            .frame(minWidth: 0, maxHeight: 600)

            
            
        
    } //body

} //view

struct sunflowerStep4View_Previews: PreviewProvider {
    static var previews: some View {
        sunflowerStep4View()
    }
}

