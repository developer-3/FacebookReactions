//
//  Home.swift
//  FacebookReactions
//
//  Created by Adam Anderson on 10/21/20.
//

import SwiftUI

struct Home: View {
    
    //Model Data...
    @State var posts = [
        Post(image: "p2", title: "Rumored iPhone 12 Mockup", time: "05:15pm", liked: false, reaction: ""),
        Post(image: "p1", title: "New Apple Event", time: "06:15pm", liked: false, reaction: ""),
        Post(image: "p3", title: "Apple A14 Chip", time: "10:15pm", liked: false, reaction: ""),
        Post(image: "p4", title: "New Macbook Pro!", time: "09:15pm", liked: false, reaction: "")
    ]
    
    
    var body: some View {
        
        ZStack{
            Color(red: 22/255, green: 117/255, blue: 237/255).ignoresSafeArea(.all, edges: .top)
            Color(red: 246/255, green: 246/255, blue: 246/255).ignoresSafeArea(.all, edges: .bottom)
            
            VStack(spacing: 0) {
                HStack(spacing: 12)  {
                    Text("facebook")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Spacer(minLength: 0)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "magnifyingglass")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding(10)
                            .background(Color.black.opacity(0.3))
                            .clipShape(Circle())
                    })
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "message.fill")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding(10)
                            .background(Color.black.opacity(0.3))
                            .clipShape(Circle())
                    })
                }
                .padding()
                .background(Color(red: 22/255, green: 117/255, blue: 237/255))
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 12) {
                        ForEach(posts){ post in
                            PostView(post: post)
                                .background(Color.white)
                        }
                    }
                })
            }
        }
        
    }
}
