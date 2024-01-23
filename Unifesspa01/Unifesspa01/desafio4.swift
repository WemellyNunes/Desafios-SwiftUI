//
//  desafio4.swift
//  Unifesspa01
//
//  Created by Turma01-25 on 18/01/24.
//

import SwiftUI

struct desafio4: View {
    @State private var searchText = ""
    @State private var showAlert = ""
    
    var body: some View {
        VStack{
            HStack{
                Image("seta")
                    .resizable()
                    .frame(width: 25, height: 30)
                //Spacer()
                HStack{
                    Image("lupa").resizable()
                        .frame(width: 25, height: 25)
                    TextField(
                      "Search",
                      text: $searchText
                    ).frame(width: 290, height: 40)
                }
                .padding(.leading, 18.0)
            }
            ZStack{
                Rectangle().frame(height: 225)
                    .foregroundColor(.blue)
                ZStack{
                    Circle().frame(width: 210, height: 210)
                        .foregroundColor(.white)
                    Image("user3").resizable()
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                }
                .padding(.bottom, -100.0)
            }
            Spacer()
            Text("Username")
                .font(.title)
                .fontWeight(.semibold)
            Text("100k friends")
                .fontWeight(.medium)
            
            HStack{
                HStack{
                    Button(action: {
                        
                    }) {
                        Image("add")
                        Text("Add to Story")
                    }.foregroundColor(.white)
                        .frame(width: 200, height: 50)
                }
                
                HStack{
                    Text("caisinhas")
                }
            }
            /*NavigationStack {
                    }.searchable(text: $searchText, prompt: "Look for something")*/
        }
    }
}

struct desafio4_Previews: PreviewProvider {
    static var previews: some View {
        desafio4()
    }
}
