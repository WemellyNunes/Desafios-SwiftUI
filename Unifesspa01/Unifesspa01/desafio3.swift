//
//  desafio3.swift
//  Unifesspa01
//
//  Created by Turma01-25 on 18/01/24.
//

import SwiftUI

struct desafio3: View {
    
    @State private var showAlert = false
    @State private var changeName = ""
    
    var body: some View {
            ZStack{
                Image("caminhao")
                    .resizable()
                    .frame(width: 750, height: 870)
                    .opacity(0.2)
                VStack{
                    
                    Text("Bem vindo, \(changeName)")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .padding(.top, 55.0)
                    TextField(
                      "Usuario",
                      text: $changeName
                    )
                    .frame(width: 80, height: 40)
                    Spacer()
                    
                    Image("logo")
                        .resizable()
                        .frame(width: 200, height: 100)
                    Image("truck")
                        .resizable()
                        .frame(width: 250, height: 120)

                    Spacer()
                    Button("Entrar") {
                        showAlert = true
                    }.alert("Legal, concluiu!", isPresented: $showAlert){} message: {
                        Text("Você realizou o desafio 3 da HackaTruck")
                    }
                    .padding(.bottom, 50.0)
        
                    
                }
                
                    
        
        
            }
        
        
            
                
        
    }
}

struct desafio3_Previews: PreviewProvider {
    static var previews: some View {
        desafio3()
    }
}
