//
//  EnvironmentObjectBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 29/08/22.
//

import SwiftUI

// ObservedObject  works with class
// StateObject
// EnvironmentObject

class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray : [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iWatch", "iPod", "iMac"])
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel : EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {

        NavigationView {
            List {
                
                ForEach(viewModel.dataArray, id: \.self) { device in
                    NavigationLink(
                        destination: DetailView(selectedItem: device) ,
                        label: {
                            Text(device)
                            
                        })
                }
            }
            .navigationTitle("Devices ")
        }
        // Environment object
        .environmentObject(viewModel)
    }
}

struct DetailView : View {
    
    let selectedItem : String
    var body: some View {
        
        ZStack {
            // Background
            Color.purple.edgesIgnoringSafeArea(.all)
            NavigationLink(destination: ThirdScreen(),
                           label: {
                
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(20)
            })
        }
    }
}

struct ThirdScreen:  View {

    @EnvironmentObject var viewModel : EnvironmentViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.red,.purple,.yellow], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            // Foreground View
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { device in
                        Text(device)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
        //ThirdScreen()
    }
}
