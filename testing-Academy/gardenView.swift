//
//  gardenView.swift
//  testing-Academy
//
//  Created by Ravi  on 10/27/22.
//

import SwiftUI

let bgGardenImage = Image("gardenBG")




struct gardenView: View {
    
    @Environment(\.dismiss) var dismiss //for dismissing modal
    



    var body: some View {
        
        ZStack{
            bgGardenImage
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .scaledToFill()
            
            
            HStack {
                Image("gardenTitle")
            }
            .frame(minWidth: 0, maxHeight: 700, alignment: .topLeading)
           
        

            
            
            
            VStack {
                Spacer().frame(height: 250.0)

                
                   
                Image("gardenIsland")
                
                HStack (spacing: 35){
                    Image("gardenCompletedStars")
                    Image("gardenDefaultStars")
                    Image("gardenDefaultStars")
                    Image("gardenDefaultStars")
                    
                }
                Image("gardenIconRow")
                
                Spacer()
                    .frame(height: 50.0)
                
                
                    Button {
                        let impactMed = UIImpactFeedbackGenerator(style: .medium)
                        impactMed.impactOccurred()

            
                        dismiss()

                        
                    } label: {
                        
                        Text("Close")
                        .frame(maxWidth: 100)
                        .padding(.all, 21.0)
                        .foregroundColor(.black)
                        .background(Color(hue: 0.333, saturation: 0.0, brightness: 0.687))
                        .font(.title2)
                        .fontWeight(.bold)
                        .cornerRadius(8)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)

                      }
                
                    
            }//vstack
            Image("mainSunflower")
                .padding(.bottom, 265.0)
                .padding(.trailing, 155)
        
         
        }//zstack
        .frame(minWidth: 0, maxHeight: 600)

        
        
    }
}

struct gardenView_Previews: PreviewProvider {
    static var previews: some View {
        gardenView()
    }
}





