//
//  HomeView.swift
//  sushia_app
//
//  Created by Cemre Onur Baş on 9.10.2020.
//

import SwiftUI

struct HomeView: View {
    
    let myMenus = [Menu(isActive: true, title: "Maki sushi"), Menu(isActive: false, title: "Chirashizushi"), Menu(isActive: false, title: "Nigirizushi") ,Menu(isActive: false, title: "Uramaki")]
    
    let myItems = [Item(imageName: "item1", title: "Makimono Roll", subtitle: "Avacado roll", price: 3.40, bgColor: "orangeColor"), Item(imageName: "item2", title: "Rolled sushi", subtitle: "Salmon slice", price: 5.40, bgColor: "blackColor"),
                   Item(imageName: "item3", title: "Makimono Crab", subtitle: "Crab stick", price: 2.40, bgColor: "blackColor"),Item(imageName: "item4", title: "Kappamaki", subtitle: "Veg width seaseme", price: 5.40, bgColor: "blackColor")]
    
    @State var suggest: String = ""
    
    
    var body: some View {
        ZStack(alignment: .top)
        {
            Color("bgColor")
            VStack
            {
                HStack
                {
                    Image("menu").resizable().frame(width: 36, height: 36, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Image("avatar").resizable().frame(width: 48, height: 48, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                HStack
                {
                    Text("Healthy and").font(.system(size: 30 , weight: .light))
                    Spacer()
                }
                Spacer().frame(height: 5)
                HStack
                {
                    Text("Delicious sushi").font(.system(size: 30 , weight: .bold))
                    Spacer()
                }
                Spacer().frame(height: 30)
                HStack
                {
                    Image(systemName: "magnifyingglass").foregroundColor(Color("grayColor"))
                    TextField("Search for your favorite sushi" ,text: $suggest).font(.system(size: 20 , weight: .light)).foregroundColor(Color("grayColor"))
                }.padding().background(Color.white).cornerRadius(16)
                
                Spacer().frame(height: 30)
                
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack
                    {
                        ForEach(myMenus , id:\.self)
                        {
                            item in MenuClass(item: item)
                        }
                    }
                })
                
                ScrollView(.horizontal, showsIndicators: false, content: {
                    
                    Spacer().frame(height : 20)
                    
                    ScrollView{
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())] ,spacing: 10){
                            ForEach(0...myItems.count - 1, id:\.self)
                            {
                                index in NavigationLink(destination: DetailView(item: myItems[index])){
                                    ItemClass(item: myItems[index])
                                }
                            }
                        }.frame(width : UIScreen.main.bounds.width - 40)
                    }
                    
                })
                
            }.padding(.horizontal, 20).padding(.top, 50)
        }.edgesIgnoringSafeArea(.all).navigationTitle("").navigationBarBackButtonHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
