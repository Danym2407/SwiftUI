//
//  ContentView.swift
//  CalculadoraPropina
//
//  Created by Daniela Mendez on 17/02/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var monto = "1000"
    @State var porcentaje = 10.0
    
    var totalPropina: Double{
        let total = Double(monto) ?? 0
        let propina = (total * porcentaje)/100
        return total+propina;
    }
    
    var body: some View {
        
        VStack{
            
            
            HStack {
                Image(systemName: "dollarsign.arrow.trianglehead.counterclockwise.rotate.90")
                    .imageScale(.large)
                    .foregroundColor(.green)
                    .bold()
                
                Text("Calculadora de Propina")
                    .bold()
                    .padding()
                
                Image(systemName: "banknote.fill")
                    .imageScale(.large)
                    .foregroundColor(.green)
                    .bold()
                
            }
            .padding()
            
            
            
            
            HStack{
                Text("$")
                TextField("Monto", text: $monto)
                Text(monto)
            }.padding()
            
            
            HStack{
                Slider(value: $porcentaje, in: 5...100, step: 5)
            }
            .padding()
            
            HStack{
                Text("Total a pagar: $\(totalPropina, specifier: "%.2f")")
                
            }
            .padding()
            
            
            
            
            
            Spacer()
            
        }
        .padding()
        
        
        
    }
}

#Preview {
    ContentView()
}
