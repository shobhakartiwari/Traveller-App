//
//  ContentView.swift
//  Traveller App


import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{
            
            Home().tabItem {
                
                Image("home").font(.title)
            }
            
            Text("activity").tabItem {
                
                Image("activity").font(.title)
            }
            
            Text("search").tabItem {
                
                Image("search").font(.title)
            }
            
            Text("person").tabItem {
                
                Image("Setting").font(.title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    
    var body : some View{
        
        VStack(alignment: .leading,spacing: 12){
            
            HStack{
                
                Button(action: {
                    
                }) {
                    
                    Image("menu").renderingMode(.original)
                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                    Image("Profile").renderingMode(.original)
                }
            }
            
            Text("Find More").fontWeight(.heavy).font(.largeTitle).padding(.top,15)
            
            HStack{
                
                Button(action: {
                    
                }) {
                    
                    Text("Experiences").fontWeight(.heavy).foregroundColor(.black)
                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                    Text("Adventures").foregroundColor(.gray)
                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                    Text("Activities").foregroundColor(.gray)
                }
            }.padding([.top],30)
            .padding(.bottom, 15)
        
            MiddleView()
            
            BottomView().padding(.top, 10)
            
        }.padding()
    }
}

struct MiddleView : View {
    
    @State var show = false
    
    var body : some View{
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            
            HStack(spacing: 20){
                
                VStack(alignment: .leading,spacing: 12){
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("Card1").renderingMode(.original)
                    }
                    
                    Text("Fishing Time").fontWeight(.heavy)
                    
                    HStack(spacing: 5){
                        
                        Image("map").renderingMode(.original)
                        Text("Vancouver, CA").foregroundColor(.gray)
                    }
                }
                
                VStack(alignment: .leading,spacing: 12){
                    
                    Button(action: {
                        
                        self.show.toggle()
                        
                    }) {
                        
                        Image("Card2").renderingMode(.original)
                    }
                    
                    Text("Forest Camping").fontWeight(.heavy)
                    
                    HStack(spacing: 5){
                        
                        Image("map").renderingMode(.original)
                        Text("Kecamatan Klojen").foregroundColor(.gray)
                    }
                }
            }
            
        }.sheet(isPresented: $show) {
            
            Detail()
        }
    }
}


struct BottomView : View {
    
    var body : some View{
        
        VStack{
            
            HStack{
                
                Text("What you want ?").fontWeight(.heavy)
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                    Text("View all").foregroundColor(.gray)
                }
                
            }.padding([.top], 15)
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 35){
                    
                    Button(action: {
                            
                    }) {
                            
                        VStack(spacing: 8){
                                
                            Image("mcard1").renderingMode(.original)
                            Text("Hiking").foregroundColor(.gray)
                        }
                    }
                    
                    Button(action: {
                            
                    }) {
                            
                        VStack(spacing: 8){
                                
                            Image("mcard2").renderingMode(.original)
                            Text("Ski").foregroundColor(.gray)
                        }
                    }
                        
                    Button(action: {
                            
                    }) {
                            
                        VStack(spacing: 8){
                                
                            Image("mcard3").renderingMode(.original)
                            Text("Sky Diving").foregroundColor(.gray)
                        }
                    }
                    Button(action: {
                            
                    }) {
                            
                        VStack(spacing: 8){
                                
                            Image("mcard4").renderingMode(.original)
                            Text("SkateBoard").foregroundColor(.gray)
                        }
                    }
                }
            }.padding(.leading, 20)
            .padding([.top,.bottom], 15)
        }
    }
}

struct Detail : View {
    
    var body : some View{
        
        VStack{
            
            Image("topbg").resizable().aspectRatio(1.35, contentMode: .fill).frame(width:UIScreen.main.bounds.width,height: 500).offset(y: -200).padding(.bottom, -200)
            
            GeometryReader{geo in
                
                VStack(alignment: .leading){
                    
                   detailTop()
                   detailMiddle()
                   detailBottom()
                    
                }
                
            }.background(Color.white)
            .clipShape(Rounded())
            .padding(.top, -75)
            
        }
    }
}

struct detailTop : View {
    
    var body : some View{
        
        VStack(alignment: .leading, spacing: 10){
            
            HStack{
                
                VStack(alignment: .leading){
                    
                    Text("Forest").fontWeight(.heavy).font(.largeTitle)
                    Text("Camping").fontWeight(.heavy).font(.largeTitle)
                    
                }
                
                Spacer()
                
                Text("$299").foregroundColor(Color("bg")).font(.largeTitle)
            }
            
        }.padding()
    }
}


struct detailMiddle : View {
    
    var body : some View{
        
        VStack(alignment: .leading, spacing: 15){
            

            HStack(spacing: 5){
                
                Image("map").renderingMode(.original)
                Text("Kecamatan Klojen").foregroundColor(Color("bg"))
                
            }
            
            HStack(spacing : 8){
                
                ForEach(0..<5){_ in
                    
                    Image(systemName: "star.fill").font(.body).foregroundColor(.yellow)
                }
            }
            
            Text("People").fontWeight(.heavy)
            
            Text("Number Of People In Your Group").foregroundColor(.gray)
            
            HStack(spacing: 6){
                
                ForEach(0..<5){i in
                    
                    Button(action: {
                        
                    }) {
                        
                        Text("\(i + 1)").foregroundColor(.white).padding(20)
                        
                    }.background(Color("bg"))
                    .cornerRadius(8)
                }
            }
            
            
        }.padding(.horizontal,15)
    }
}

struct detailBottom : View {
    
    var body : some View{
        
        VStack(alignment: .leading, spacing: 10){
            
            Text("Description").fontWeight(.heavy)
            Text("Forest Camping Experiences and Meanings Key elements of camping experience include nature, social interaction, and comfort/convenience. The most common associated meanings are restoration, family functioning").foregroundColor(.gray)
            
            HStack(spacing: 8){
                
                Button(action: {
                    
                }) {
                    
                    Image("Save").renderingMode(.original)
                }
                
                Button(action: {
                    
                }) {
                    
                    HStack(spacing: 6){
                        
                        Text("Book Your Experience")
                        Image("arrow").renderingMode(.original)
                        
                    }.foregroundColor(.white)
                    .padding()
                    
                }.background(Color("bg"))
                .cornerRadius(8)
                
            }.padding(.top, 6)
            
        }.padding()
    }
}

struct Rounded : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 40, height: 40))
        return Path(path.cgPath)
    }
}
