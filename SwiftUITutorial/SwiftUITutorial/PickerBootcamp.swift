//
//  PickerBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 27/08/22.
//

import SwiftUI

struct PickerBootcamp: View {
   
    @State var selection : String = "1"
    var filterOpotion : [String]  = ["First","Second","Third"]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor  = UIColor.purple
//        let attribute : [NSAttributedString.Key : Any] = [ .foregroundColor = Color.white
//        ]
//        UISegmentedControl.appearance().setTitleTextAttributes(attribute, for: .selected)
    }
     
    var body: some View {
        
        VStack {
            
            Picker (
                selection: $selection,
                label:
                    
                    HStack {
                        Text("Filter")
                        //Text(selection)
                    }
                    .font(.headline)
                    .foregroundColor(.red)
                    .padding()
                    .padding(.horizontal)
                    .background(.blue)
                    .cornerRadius(10)
                    .shadow(color: .black, radius: 10, x: 10, y: 10)
                ,
                content: {
                    ForEach(filterOpotion.indices) { index in
                        
                        VStack {
                            Text(filterOpotion[index])
                           // Image(systemName: "heart.fill")
                               // .font(.title)
                        }.tag(filterOpotion[index])
                    }
                })
                .pickerStyle(.segmented)
                //.pickerStyle(.wheel)

        }
        

//        VStack {
//
//            HStack {
//                Text("Age")
//                Text(selection)
//
//            } .font(.title)
//
//            Picker (
//                selection : $selection,
//                label: Text("Picker"),
//                content: {
//                    ForEach(10..<100 ) { number in
//                        Text("\(number)")
//                            .font(.headline)
//                            .foregroundColor(.red)
//                            .tag(number)
//                    }
//                })
//                .pickerStyle(.wheel)
//        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
