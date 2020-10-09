//
//  DetailView.swift
//  sushia_app
//
//  Created by Cemre Onur Baş on 9.10.2020.
//

import SwiftUI

struct DetailView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var item : Item
    
    var body: some View {
        
        ZStack(alignment: .top){
            VStack(spacing : 0)
            {
                ScrollView(.vertical, showsIndicators: false, content:
                {
                    VStack (alignment: .leading) {
                        HStack
                        {
                            Image(systemName: "arrow.left").font(.system(size: 24)).onTapGesture(count: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/, perform: {
                                self.presentationMode.wrappedValue.dismiss()
                            })
                            Spacer()
                            Image(systemName: "heart.fill").foregroundColor(Color("orangeColor")).font(.system(size: 24))
                        }.padding(.horizontal , 20)
                        
                        Image("detail").resizable().aspectRatio(contentMode: .fit)
                        
                        Spacer().frame(height: 20)
                        
                        HStack
                        {
                            Spacer()
                            HStack
                            {
                                Image(systemName: "minus").font(.system(size: 24))
                                Spacer().frame(width: 20)
                                Text("02").font(.system(size: 24, weight : .semibold))
                                Spacer().frame(width: 20)
                                Image(systemName: "plus").font(.system(size: 24))
                            }.padding(.horizontal, 40).padding(.vertical, 20).background(Color.white).cornerRadius(36).shadow(color: Color/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.1), radius: 40, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                            Spacer()
                        }
                        
                        Spacer().frame(height: 30)
                        
                        
                        Text(item.title).padding(.leading, 20).font(.system(size: 24 , weight : .semibold))
                        
                        Spacer().frame(height: 30)
                        
                        HStack
                        {
                            Spacer()
                            HStack{
                                Image(systemName: "star.fill").font(.system(size: 24)).foregroundColor(Color("yellowColor"))
                                Text("5.0").font(.system(size: 14 , weight : .semibold))
                                
                                
                                Image(systemName: "flame.fill").font(.system(size: 24)).foregroundColor(Color("orangeColor"))
                                Text("57 Calories").font(.system(size: 14 , weight : .semibold))
                                
                                
                                Image(systemName: "clock.fill").font(.system(size: 24)).foregroundColor(Color("redColor"))
                                Text("20-25 Min").font(.system(size: 14 , weight : .semibold))
                            }.padding(.horizontal, 40).padding(.vertical , 30).background(Color.white).cornerRadius(16).shadow(color: Color/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.1), radius: 40, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                            Spacer()
                        }.padding(.horizontal, 20)
                        
                        
                        Spacer().frame(height: 30)
                        
                        VStack(alignment: .leading){
                        Text("Ingradients").padding(.horizontal, 20).font(.system(size: 20))
                            
                            Spacer().frame(height: 10)
                            
                            Text("Short-grain white rice is usally used, although short-grain brown rice,like olive oil on nori, is now becoming more widespread").padding(.horizontal, 20).foregroundColor(Color("grayColor")).lineSpacing(5.0)
                        }
                        
                        
                    }.padding(.top , 50)
                }).background(Color("bgColor")).frame(height: UIScreen.main.bounds.height - 80).cornerRadius(36)
                
                HStack{
                    Text("Place Order").foregroundColor(.white).font(.system(size: 22, weight: .semibold))
                    Image(systemName: "arrow.right").font(.system(size: 24)).foregroundColor(.white)
                    Image(systemName: "chevron.right").font(.system(size: 16)).foregroundColor(.white).padding(.leading, -5)
                }.frame(height: 80)
            }.background(Color("blackColor"))
        }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).navigationBarHidden(true)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let item = Item(imageName: "item3", title: "Makimono Crab", subtitle: "Crab stick", price: 2.40, bgColor: "blackColor")
        DetailView(item: item)
    }
}
