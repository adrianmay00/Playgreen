//
//  stepController.swift
//  testing-Academy
//
//  Created by Ravi  on 10/26/22.
//

import SwiftUI

enum item {
    case step1
    case step2
    case step3
    case step4
    case completed
    case showingGarden
    
}





struct stepControllerView: View {
    
    @Environment(\.dismiss) var dismiss
    

    @State var selectedItem: item = .step1


    var body: some View {
        

        switch selectedItem {
            case .step1:
            
                ZStack {
                    
                    VStack{
                        
                     
                        
                        
                        sunflowerStep1View()
                    
                        Button("I have sunflower seeds!") {
                            let impactLight = UIImpactFeedbackGenerator(style: .light)
                            impactLight.impactOccurred()

                            self.selectedItem = .step2
                            
                        }
                        
                        
                        .frame(maxWidth: .infinity)

                        .padding(.all, 21.0)
                        .foregroundColor(.black)
                        .background(Color(red: 0.2627450980392157, green: 0.8156862745098039, blue: 0.0))
                        .font(.title2)
                        .fontWeight(.bold)
                        .cornerRadius(8)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                        
                    
                       
                        
                    } //vstack
                    
                    closeButton
                    
                }//zstack
            
                
                
            
                
            
        case .step2:
            
            
            ZStack {
                VStack {
                    sunflowerStep2View()
                    Button("I have a pot and soil!") {
                        let impactLight = UIImpactFeedbackGenerator(style: .light)
                        impactLight.impactOccurred()

                        self.selectedItem = .step3
                        
                    }
                    
                    .frame(maxWidth: .infinity)

                    .padding(.all, 21.0)
                    .foregroundColor(.black)
                    .background(Color(red: 0.2627450980392157, green: 0.8156862745098039, blue: 0.0))
                    .font(.title2)
                    .fontWeight(.bold)
                    .cornerRadius(8)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                    
                } //vstack
                
                closeButton
                
            }//zstack
            
            
            
            
            
        case .step3:
            
            ZStack {
                VStack {
                    sunflowerStep3View()
                    Button("I have planted my seeds!") {
                        let impactLight = UIImpactFeedbackGenerator(style: .light)
                        impactLight.impactOccurred()

                        self.selectedItem = .step4
                
                        
                    }
                    
                    .frame(maxWidth: .infinity)

                    .padding(.all, 21.0)
                    .foregroundColor(.black)
                    .background(Color(red: 0.2627450980392157, green: 0.8156862745098039, blue: 0.0))
                    .font(.title2)
                    .fontWeight(.bold)
                    .cornerRadius(8)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                    
                } //vstack
                
                closeButton
                
            }//zstack
            
            
            
            
        case .step4:
            
            ZStack {
                VStack {
                    sunflowerStep4View()
                    
                    //this button below moves to the next step
                    Button("I have put my pot in the sun!") {
                        let impactLight = UIImpactFeedbackGenerator(style: .light)
                        impactLight.impactOccurred()

                        self.selectedItem = .completed
                
                        
                    }
                    
                    .frame(maxWidth: .infinity)

                    .padding(.all, 21.0)
                    .foregroundColor(.black)
                    .background(Color(red: 0.2627450980392157, green: 0.8156862745098039, blue: 0.0))
                    .font(.title2)
                    .fontWeight(.bold)
                    .cornerRadius(8)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                    
                } //vstack
                
                closeButton
                
            }//zstack
            
            
            
            
        case .completed:
            
            ZStack {
                VStack {
                    sunflowerCompletedView()
                    
                    //this button below moves to the next step
                    Button("Mark Activity as Complete") {
                        let impactLight = UIImpactFeedbackGenerator(style: .light)
                        impactLight.impactOccurred()

                        self.selectedItem = .showingGarden


                
                        
                    }
                    .frame(maxWidth: .infinity)

                    .padding(.all, 21.0)
                    .foregroundColor(.black)
                    .background(Color(red: 243.0, green: 240.0, blue: 0.0))
                    .font(.title2)
                    .fontWeight(.bold)
                    .cornerRadius(8)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)), radius:4, x:0, y:4)
                    
                } //vstack
                closeButton
                
            }//zstack endcase
            
        case .showingGarden:
            
            gardenView()
            
            
            
    } //selectedItem
} //body
    
    
    var closeButton: some View {
        


        
        VStack {
            HStack {
                
                if self.selectedItem != .step1{
                    
                    Button(action: {
                        let impactLight = UIImpactFeedbackGenerator(style: .light)
                        impactLight.impactOccurred()

                        
                        //this is all hard coded, but WE NEED TO CHANGE THIS!
                       
                        
                        
                        if (self.selectedItem == .step2){
                            self.selectedItem = .step1
                            
                        }
                        if (self.selectedItem == .step3){
                            self.selectedItem = .step2
                            
                        }
                        if (self.selectedItem == .step4){
                            self.selectedItem = .step3
                            
                        }
                        if (self.selectedItem == .completed){
                            self.selectedItem = .step4
                            
                        }


                    }) {
                        HStack{
                            Image(systemName: "arrow.left")
                                .padding(.leading, 20)
                                .padding(.top, 20)

                                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.0, opacity: 0.433))
                                .font(.system(size: 30))
                        }
                        

                        
                    }
                    
                }
                

                
            
                Spacer()
                
                
                Button(action: {
                    let impactLight = UIImpactFeedbackGenerator(style: .light)
                    impactLight.impactOccurred()

                    dismiss()

                    
                }) {
                    Image(systemName: "xmark.circle")
                        .padding(.top, 20)
                        .padding(.trailing, 20)
                        .foregroundColor(.white)
                        .font(.system(size: 30))

                }
            }
            .padding(.top, 5)
            Spacer()
        }
    }
    
    
    
} //controllerView 

struct stepControllerView_Previews: PreviewProvider {
    

    
    static var previews: some View {
        stepControllerView()
    }
}
