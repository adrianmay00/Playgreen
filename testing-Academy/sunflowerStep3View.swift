//
//  sunflowerStep3View.swift
//  testing-Academy
//
//  Created by Ravi  on 10/26/22.
//

import SwiftUI

struct sunflowerStep3View: View {
    

    
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
                        Text("Step 3")
                            .fontWeight(.bold)
                            .font(.title)
                        
                        Spacer()
                        
                        Image("step3Image").padding(.trailing, 50.0)
                        
                        
                        Spacer()
                        
                        
                        
                      
                

                    }//vstack
                    
                  

                }//HStack
                .frame(minWidth: 0, maxHeight: 600)
                
                

                
            }//zstack
            .frame(minWidth: 0, maxHeight: 600)

            
            
        
    } //body

} //view

struct sunflowerStep3View_Previews: PreviewProvider {
    static var previews: some View {
        sunflowerStep3View()
    }
}

