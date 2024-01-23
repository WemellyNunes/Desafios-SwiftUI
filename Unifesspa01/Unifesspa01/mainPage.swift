//
//  mainPage.swift
//  Unifesspa01
//
//  Created by Turma01-25 on 23/01/24.
//

import SwiftUI

extension UINavigationBarAppearance {
    func setColor(title: UIColor? = nil, background: UIColor? = nil) {
        configureWithTransparentBackground()
        if let titleColor = title {
            largeTitleTextAttributes = [.foregroundColor: titleColor]
            titleTextAttributes = [.foregroundColor: titleColor]
        }
        backgroundColor = background
        UINavigationBar.appearance().scrollEdgeAppearance = self
        UINavigationBar.appearance().standardAppearance = self
    }
}

struct Song : Identifiable {
    var id: Int
    var name : String
    var artist : String
    var capa : String
}

var arrayMusics = [
    Song(id: 1, name: "Cloud 9", artist: "Beach Bunny", capa: "bunny"),
    Song(id: 2, name: "Cloud 9", artist: "Beach Bunny", capa: "bunny"),
    Song(id: 3, name: "Cloud 9", artist: "Beach Bunny", capa: "bunny"),
    Song(id: 4, name: "Cloud 9", artist: "Beach Bunny", capa: "bunny"),
    Song(id: 5, name: "Cloud 9", artist: "Beach Bunny", capa: "bunny"),
    Song(id: 6, name: "Cloud 9", artist: "Beach Bunny", capa: "bunny"),
    Song(id: 7, name: "Cloud 9", artist: "Beach Bunny", capa: "bunny"),
    Song(id: 4, name: "Cloud 9", artist: "Beach Bunny", capa: "bunny")
]

struct mainPage: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Image("fundo").resizable().edgesIgnoringSafeArea(.all)
                //Rectangle().edgesIgnoringSafeArea(.all).background()
                VStack{
                    Image("bunny").resizable().frame(width: 200, height: 200)
                    HStack{
                        Text("Cloud 9")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        Spacer()
                    }
                    HStack{
                        Image("bunny").resizable().frame(width: 30, height: 30)
                        Text("Beach Bunny").foregroundColor(.white)
                        Spacer()
                    }
                    
                    
                    NavigationView{
                        List{
                            ForEach(arrayMusics, id: \.id) { music in
                                NavigationLink(destination: desafio4()){
                                    VStack{
                                        HStack{
                                            Image("\(music.capa)").resizable().frame(width: 50, height: 50)
                                            Text("\(music.name)")
                                            Text("\(music.artist)")
                                        }//.foregroundColor(Color.white)
                                    }
                                }.background(Color.black.opacity(0.0))
                                
                            }.listRowBackground(Color.blue.opacity(0.0))
                        }
                    }
                    
                    
                
                }.padding()
            }
        }
            
            
           /*NavigationView{
                List {
                    ForEach(arrayMusics) { music in
                        NavigationLink(destination: ArtMusic(music: music)){
                            Text("\(music.nam
                    }*/
        }
    }
            
            
            
                

struct mainPage_Previews: PreviewProvider {
    static var previews: some View {
        mainPage()
    }
}
