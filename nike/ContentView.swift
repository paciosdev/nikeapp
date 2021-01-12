//
//  ContentView.swift
//  nike
//
//  Created by Kekko Paciello on 30/12/20.
//

import SwiftUI

struct ContentView: View {
    @State private var selected = ""
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack{
                VStack{
                    HStack{
                        Image(systemName: "chevron.left")
                        Spacer()
                        Image("nike")
                            .resizable()
                            .scaledToFit()
                            .offset(x: 45)
                            .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Spacer()
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .frame(width: 100, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .overlay(HStack {
                                Image(systemName: "cart.fill")
                                    .foregroundColor(.white)
                                Spacer()
                            }.padding())
                            .offset(x: 60)
                        
                    }
                    .padding()
                    .padding(.top,20)
                    
                    Image("scarpa")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }.padding()
                .background(
                    RoundedRectangle(cornerRadius: 30)
                                .foregroundColor(Color(#colorLiteral(red: 0.9636338353, green: 0.9567498565, blue: 0.9689053893, alpha: 1)))
                        .edgesIgnoringSafeArea(.all)
                    
                )
                
                VStack{
                    HStack{
                        VStack(alignment: .leading, spacing: 10){
                            Text("Men's Shoe")
                                .font(.system(.callout, design: .rounded))
                                .foregroundColor(.gray)
                            Text("Nike x Off White")
                                .font(.system(.title, design: .rounded))
                                .bold()
                        }
                        Spacer()
                        VStack(alignment: .trailing, spacing: 10){
                            HStack{
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Text("(4.5)")
                                    .font(.system(.callout, design: .rounded))
                                    .foregroundColor(.gray)
                                    
                            }
                            Text("$290.00")
                                .font(.system(.title3, design: .rounded))
                        }
                    }
                    .padding()
                    
                    HStack{
                        Text("Size:")
                            .font(.system(.callout, design: .rounded))
                            .bold()
                        Spacer()
                        
                        Text("US")
                            .font(.system(.callout, design: .rounded))
                        Text("UK")
                            .font(.system(.callout, design: .rounded))
                            .foregroundColor(.gray)
                        Text("EU")
                            .font(.system(.callout, design: .rounded))
                            .foregroundColor(.gray)
                    }
                    .padding()
                    
                    
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            HStack(spacing: 20){
                                SizeView(text: "5", selected: $selected)
                                SizeView(text: "5.5", selected: $selected)
                                SizeView(text: "6", selected: $selected)
                                SizeView(text: "7", selected: $selected)
                                SizeView(text: "7.5", selected: $selected)
                            }
                            .padding(.horizontal)
                        })
                    
                    HStack{
                        Text("Description")
                        Spacer()
                        Image(systemName: "chevron.down")
                    }
                    .padding()
                    Divider()
                    HStack{
                        Text("Free Delivery and Returns")
                        Spacer()
                        Image(systemName: "chevron.down")
                    }
                    .padding()
                    
                    
                }
                
                HStack(spacing: 20){
                    Circle()
                        .stroke(lineWidth: 2)
                        .foregroundColor(Color.gray.opacity(0.1))
                        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .overlay(Image(systemName: "bookmark"))
                        
                    Text("Add to Cart")
                        .foregroundColor(.white)
                        .font(.system(.title3, design: .rounded))
                        .frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color.black)
                        .cornerRadius(40)
                        
                }
                .padding(.horizontal)
            }
        })
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SizeView: View {
    var text: String
    @Binding var selected: String
    var body: some View {
        Text(text)
            .foregroundColor(selected == text ? .white : .black)
            .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(selected == text ? Color.orange : Color.gray.opacity(0.1))
            .cornerRadius(20)
            .onTapGesture {
                selected = text
            }
    }
}
