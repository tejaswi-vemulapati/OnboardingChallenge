////
////  SwiftUIView.swift
////  OnePass
////
////  Created by Dax Patel on 4/15/23.
////
//
//import SwiftUI
//
//struct SwiftUIView: View {
//    var body: some View {
//        ScrollView{
//            LazyVStack {
//                ForEach(0 ... 10, id: \.self) {item in
//                    editposts()
//                }
//            }
//        }
////        VStack {
////            //profile image + user infor + text
////            HStack(alignment: .top, spacing: 12) {
////                Circle()
////                    //how to put img in here and pull it from database(will be last thing that we implement
////                    .frame(width: 56, height: 56)
////                    .foregroundColor(Color(.systemBlue))
////
////                // user info & text
////                VStack(alignment: .leading, spacing: 4) {
////                    //Hstack is horiszontal staxk
////                    HStack {
////                        Text("Dax Patel")
////                            .font(.subheadline).bold()
////                    }
////
////                    Text("I got this from the Database")
////                        .font(.subheadline)
////                        .multilineTextAlignment(.leading)
////                }
////
////                Button(action: {
////                    //action is going to change view to edit post
////                }, label: {
////                    Text("Edit Text".uppercased())
////                        .frame(width: .infinity)
////                        .background(Color.blue.opacity(0.3).cornerRadius(4))
////                        .foregroundColor(.red)
////                        .font(.headline)
////                })
////
////            }
////        }
////        //end of one post, how to make multiple?
//    }
//}
//
//struct SwiftUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        SwiftUIView()
//    }
//}
