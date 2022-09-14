//
//  DatePicketBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 27/08/22.
//

import SwiftUI

struct DatePicketBootcamp: View {
    
    @State var selectedDate: Date = Date()
    
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    
    let endingDate: Date = Calendar.current.date(from: DateComponents(year: 2022)) ?? Date()

    var dateFormater : DateFormatter {
        
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .long
        return formatter
    }
    var body: some View {
        
        VStack {
            
            
            Text("Selected Date is")
            Text(dateFormater.string(from: selectedDate))
            
            DatePicker("Select a Date", selection: $selectedDate , in: startingDate...endingDate, displayedComponents: [.date])
                .accentColor(.red)
                .datePickerStyle(.compact)
            
            

    //        DatePicker("Select a Date",
    //                   selection: $selectedDate,
    //                   displayedComponents: [.date,.hourAndMinute])
    //            .accentColor(.red)
    //            .datePickerStyle(.compact)
                        
            
            
            
    //        DatePicker("Select a Date", selection: $selectedDate)
    //            .accentColor(.red)
    //            .datePickerStyle(
    //                CompactDatePickerStyle()
    //                //GraphicalDatePickerStyle()
    //               // WheelDatePickerStyle()
    //            )
            
        }
       
    }
}

struct DatePicketBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePicketBootcamp()
    }
}
