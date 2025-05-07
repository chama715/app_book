//
//  EffectView.swift
//  Mycamera
//
//  Created by 高橋直斗 on 2025/05/07.
//

import SwiftUI

struct EffectView: View {
    @Binding var isShowSheet: Bool
//    let captureImage: UIImage
    @State var showImage: UIImage?
    var body: some View {
        VStack {
            Spacer()
            if let showImage {
                Image(uiImage: showImage)
                    .resizable()
                    .scaledToFit()
            }
            Spacer()
            Button {
            } label: {
                Text("エフェクト")
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .multilineTextAlignment(.center)
                    .background(Color.blue)
                    .foregroundStyle(.white)
            }
            .padding()
        }
        if let showImage {
            let shareImage = Image(uiImage: showImage)
            ShareLink(item: shareImage, subject: nil, message: nil,
                      preview: SharePreview("Photo", image: shareImage)) {
                Text("シェア")
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundStyle(Color.white)
            }
            padding()
        }
        Button {
        } label: {
            Text("閉じる")
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .multilineTextAlignment(.center)
                .background(Color.blue)
                .foregroundStyle(.white)
        }
        .padding()
        
        .onAppear {
 //           showImage = captureImage
        }
    }
}

#Preview {
    EffectView(
        isShowSheet: .constant(true),
//        captureImage: UIImage(named: "preview_use")!
    )
}
