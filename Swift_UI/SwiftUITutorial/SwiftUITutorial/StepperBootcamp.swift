//
//  StepperBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 27/08/22.
//

import SwiftUI

struct StepperBootcamp: View {

    @State var stepperValue : Int = 10
    @State var increment : Int = 10
    
    var body: some View {
        
        
        VStack {
            
            Stepper("Select value \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: Double(stepperValue))
                .frame(width: 200 + CGFloat(increment), height: 200)
            Stepper("Stepper 2 ") {
                withIncrement(amount: 100)
            }
            onDecrement: {
                withIncrement(amount: -100)
            }
        }
       
        
        
    }
    
    func withIncrement(amount: CGFloat) {
        
        withAnimation(.easeInOut) {
            increment += Int(amount)
        }
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
