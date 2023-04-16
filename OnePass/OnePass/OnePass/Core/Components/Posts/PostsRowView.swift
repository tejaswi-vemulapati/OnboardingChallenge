//
//  PostsRowView.swift
//  OnePass
//
//  Created by Dax Patel on 4/15/23.
//

import SwiftUI

struct PostsRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("Dax Was here") //replace with user from database
                            .font(.subheadline).bold()
                    }
                    //the user post will be here
                    Text("Text from database")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            Divider()
            .padding()
        }
    }
}

struct PostsRowView_Previews: PreviewProvider {
    static var previews: some View {
        PostsRowView()
    }
}
