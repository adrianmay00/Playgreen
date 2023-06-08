//
//  activityStartPageView.swift
//  testing-Academy
//
//  Created by Ravi  on 10/25/22.
//

import SwiftUI

let bgStartPageImage = Image("activityStartPageBackground")

let sunflowerTalking = Image("sunflowerTalk1")


struct activityStartPageView: View {
    
    @State private var showActivityStepsModal = false


    var body: some View {
        
        ZStack{
            bgStartPageImage
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .scaledToFill()
                .blur(radius: 4)
            
            HStack { 
                Text("Plant a Sunflower")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                    .font(.title)
            }
            .frame(minWidth: 0, maxHeight: 700, alignment: .topLeading)
        

            
            VStack{
                Spacer()
                    .frame(height: 100)
                sunflowerTalking
                
                
                HStack{
                    Image("sunflowerSeeds")
                    Image("arrow")
                    Image("mainSunflower")

                }//hstack
                
                
                
                
                Spacer()
                    .frame(height: 38)
            
              
              
                
                
                
                Button("Start Step 1") {
                    let impactLight = UIImpactFeedbackGenerator(style: .light)
                    impactLight.impactOccurred()
                    showActivityStepsModal.toggle()
                }
                
                .frame(maxWidth: .infinity)

                .padding(.all, 21.0)
                .foregroundColor(.black)
                .background(Color(red: 0.2627450980392157, green: 0.8156862745098039, blue: 0.0))
                .font(.title2)
                .fontWeight(.bold)
                .cornerRadius(8)
                .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                
                
                .sheet(isPresented: $showActivityStepsModal) {
                    VStack {
                        stepControllerView()
                        
                        

                      
                    }
                }//end of sheet
                
                
            }//vstack
        
            
            
            
        }//zstack
        .frame(minWidth: 0, maxHeight: 600)

        
        
    }
}

struct activityStartPageView_Previews: PreviewProvider {
    static var previews: some View {
        activityStartPageView()
    }
}
