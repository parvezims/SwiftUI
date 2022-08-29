//
//  ViewModelBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 28/08/22.
//

import SwiftUI

// MARK: Model
struct FruitModel : Identifiable {
    
    let id : String = UUID().uuidString
    let name: String
    let count: Int
}

// MARK: VIEW MODEL
class FruitViewModel  : ObservableObject {
    
    @Published var fruitsArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        loadFromServer()
    }
    
    func delete(_ indexset : IndexSet) {
        fruitsArray.remove(atOffsets: indexset)
    }
    
    func getFruits() {
        
        let fruit1 = FruitModel(name: "Oranges", count: 5)
        let fruit2 = FruitModel(name: "Kiwi", count: 15)
        let fruit3 = FruitModel(name: "Watermelon", count: 90)
        let fruit4 = FruitModel(name: "Date", count: 67)
        let fruit5 = FruitModel(name: "Mango", count: 5)
        fruitsArray.append(fruit1)
        fruitsArray.append(fruit2)
        fruitsArray.append(fruit3)
        fruitsArray.append(fruit4)
        fruitsArray.append(fruit5)
    }
    
    func getFruitsFromServer() {
        let fruit1 = FruitModel(name: "Govava", count: 23)
        let fruit2 = FruitModel(name: "Cherry", count: 26)
        fruitsArray.append(fruit1)
        fruitsArray.append(fruit2)
    }
    
    func loadFromServer() {
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1){
            self.getFruits()
            self.isLoading = false
        }
    }
}


// MARK: VIEW
struct ViewModelBootcamp: View {
    
    // @ObservedObject used this for subview
    // If I need to pass the object into another view or class then used observeble object
    // @ObservedObject var fruitViewModel : FruitViewModel = FruitViewModel()
    
    
    
    // @StateObject  use this in creation INIT
    // @StateObject will not refresh if our view is reloading or refreshed due to some animation of something.
    // In case of MVVM this will be used
    @StateObject var fruitViewModel : FruitViewModel = FruitViewModel()

    var body: some View {

        NavigationView{
            List {
                
                if fruitViewModel.isLoading {
                    ProgressView()
                }
                else {
                   
                    ForEach(fruitViewModel.fruitsArray) { fruit in
                        HStack{
                            Text(fruit.name)
                                .foregroundColor(.green)
                                .font(.headline)
                                .fontWeight(.bold)
                            
                            Spacer()
                            Text("\(fruit.count)")
                                .foregroundColor(.green)
                            Image(systemName: "heart.fill")
                                .font(.headline)
                                .foregroundColor(.red)
                        }
                    }
                    .onDelete(perform: { indexset in
                        fruitViewModel.delete(indexset)
                    })
                }
                
            }
            .listStyle(.grouped)
            .navigationTitle("Fruits List")
            .navigationBarItems(trailing:
                
                NavigationLink (destination: {
                SecondScreenView(fruitViewModel: fruitViewModel)
                }, label: {
                    Image(systemName: "arrow.right")
                        .font(.title)
                })
            )
//            .onAppear(perform: {
//                fruitViewModel.getFruits()
//            })
        }
    }
}


struct SecondScreenView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        
        ZStack {
            Color.purple.edgesIgnoringSafeArea(.all)
            
            VStack (alignment: .leading, spacing: 20) {
                ForEach(fruitViewModel.fruitsArray) {fruit in
                    
                    Text(fruit.name)
                }
            }
        }
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
        //SecondScreenView()
        
    }
}
