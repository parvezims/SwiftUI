//
//  ToggleBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 27/08/22.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var isToggle: Bool = false
    var body: some View {

        VStack {
            HStack {
                Text("Status")
                Text(isToggle ? "Online" : "Offline")
            }.font(.title)
            
            Toggle(
                isOn: $isToggle,
                label: {
                    Text("First Switch")
                }
            )
                
            .toggleStyle(SwitchToggleStyle(tint: .red))
            
            Spacer()
        }
        .padding(.horizontal, 80)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
