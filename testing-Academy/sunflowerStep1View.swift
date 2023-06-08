//
//
//  sunflowerStep1View.swift
//  testing-Academy
//
//  Created by Ravi  on 10/25/22.
//

import SwiftUI

let bgStepsImage = Image("activityStepsBackground")



struct sunflowerStep1View: View {
    

    
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
                        Text("Step 1")
                            .fontWeight(.bold)
                            .font(.title)
                        
                        Spacer()
                        
                        Image("findSeeds")
                            .padding(.leading, 50.0)
                        Spacer()
                        
                        
                        
                      
                

                    }//vstack
                    
                  

                }//HStack
                .frame(minWidth: 0, maxHeight: 600)
                
                

                
            }//zstack
            .frame(minWidth: 0, maxHeight: 600)

            
            
        
    } //body

} //view

struct sunflowerStep1View_Previews: PreviewProvider {
    static var previews: some View {
        sunflowerStep1View()
    }
}
