//
//  ItemClass.swift
//  sushia_app
//
//  Created by Cemre Onur Baş on 9.10.2020.
//

import SwiftUI

struct ItemClass: View {
    
    var item : Item?
    
    var body: some View {
        VStack(alignment: .leading)
        {
            Spacer()
            Image(self.item!.imageName).resizable().aspectRatio(contentMode: .fit)
            Spacer()
            VStack(alignment: .leading , spacing : 0)
            {
                Text(self.item!.title).font(.system(size: 22 , weight: .semibold)).lineLimit(1).foregroundColor(Color("blackColor"))
                Spacer().frame(height: 10)
                HStack
                {
                    VStack(alignment: .leading)
                    {
                        Text(self.item!.subtitle).font(.system(size: 18)).foregroundColor(Color("grayColor"))
                        Spacer().frame(height: 10)
                        Text("$" + String(self.item!.price) + "0").bold().foregroundColor(Color("blackColor"))
                    }
                    Spacer()
                    Image(systemName: "plus.circle.fill").font(.system(size: 40)).foregroundColor(Color(self.item!.bgColor))
                }
            }
            Spacer()
        }.padding().background(Color.white).cornerRadius(16)
    }
}

struct ItemClass_Previews: PreviewProvider {
    static var previews: some View {
        
        let item = Item(imageName: "item1", title: "Makimono Roll", subtitle: "Avacado roll", price: 3.40, bgColor: "orangeColor")
        ItemClass(item: item)
    }
}
