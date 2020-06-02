//
//  ContentView.swift
//  DemoAlert
//
//  Created by Rishabh on 02/06/20.
//  Copyright © 2020 Rishabh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAlertShow:Bool = false
    
    var body: some View {
       
        Button("Show Alert") {
            self.isAlertShow = true
        }.alert(isPresented: $isAlertShow) { () -> Alert in
            //showAlert(withTitle: "First Alert", message: "With First Message", dismissButtonText: "Ok")
            showAlertWithMultipleButton(withTitle: "First Alert", message: "With First Message", primaryButtonText: "Yes", secondaryButtonText: "No")
        }
        
    }
    
    private func showAlert(withTitle: String, message: String, dismissButtonText: String) -> Alert {
        
        return Alert(title: Text(withTitle), message: Text(message), dismissButton: .default(Text(dismissButtonText)))
    }
    
    private func showAlertWithMultipleButton(withTitle: String, message: String, primaryButtonText: String, secondaryButtonText: String) -> Alert {
        
        return Alert(title: Text(withTitle), message: Text(message), primaryButton: .default(Text(primaryButtonText)), secondaryButton: .destructive(Text(secondaryButtonText), action: {
            print("Did press cancel")
        }))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
