//
//  MenuClass.swift
//  sushia_app
//
//  Created by Cemre Onur Baş on 9.10.2020.
//

import SwiftUI

struct MenuClass: View {
    
    var item : Menu?
    
    var body: some View {
        if(self.item!.isActive)
        {
            HStack{
                
                    Circle().fill(Color("orangeColor")).frame(width: 10, height: 10)
                
                
                Text(self.item!.title)
            }.padding(.horizontal ,20).padding(.vertical , 10).background(Color.white).cornerRadius(8)
        }
        else
        {
            HStack{
                
                Text(self.item!.title)
            }.padding(.horizontal ,20).padding(.vertical , 10)
        }
    }
}

struct MenuClass_Previews: PreviewProvider {
    static var previews: some View {
        var item = Menu(isActive: true, title: "Maki sushi")
        MenuClass(item: item)
    }
}
