//
//  ContentView.swift
//  sushia_app
//
//  Created by Cemre Onur Baş on 9.10.2020.
//

import SwiftUI
struct Menu : Hashable , Codable {
    var isActive: Bool
    var title: String
}

struct Item: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
    var subtitle: String
    var price: Double
    var bgColor: String
}

struct ContentView: View {
    
    var body: some View {
        
        NavigationView{
            ZStack(alignment: .top)
            {
                Color("bgColor")
                VStack
                {
                    Image("onboarding_bg").resizable().aspectRatio(contentMode: .fit)
                    Text("Heaven of Sushi").font(.system(size: 36)).bold().foregroundColor(Color("blackColor"))
                    
                    Spacer().frame(height: 30)
                    
                    Text("Sushi is a traditional Japanese dish of prepared vinegared rice, usually with some  sugar and salt,accomanying a variety of ingredients").foregroundColor(Color("grayColor")).multilineTextAlignment(.center).lineSpacing(5.0)
                    
                    Spacer().frame(height: 30)
                    
                    NavigationLink(
                        destination: HomeView()){
                        ZStack{
                            HStack{
                                Image(systemName: "arrow.right").font(.system(size: 24)).foregroundColor(.white)
                                Image(systemName: "chevron.right").font(.system(size: 16)).padding(.leading, -7).foregroundColor(.white)
                            }
                        }.frame(width: 72, height: 72, alignment: .center).background(Color("blackColor")).cornerRadius(36)
                    }
                }
            }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
