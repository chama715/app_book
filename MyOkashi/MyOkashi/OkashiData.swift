//
//  OkashiData.swift
//  MyOkashi
//
//  Created by 高橋直斗 on 2025/05/08.
//

import SwiftUI

struct OkashiItem: Identifiable {
    var id: String
    var name: String
    var url: URL
    var image: URL
}

@Observable class OkashiData {
    struct ResultJson: Codable {
        struct Item: Codable {
            let name: String?
            let url: URL?
            let image: URL?
        }
        let item: [Item]?
    }

    var okashiList: [OkashiItem] = []

    func searchOkashi(keyword: String) {
        print("searchOkashiメソッドで受け取った値:\(keyword)")
        
        Task {
            await search(keyword: keyword)
        }
    }

    @MainActor
    private func search(keyword: String) async {
        
        guard let keyword_encode = keyword.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        else {
            return
        }
        guard let req_url = URL(string: "https://sybird.jp/toriko/api/?apikey=guest&format=json&keyword=\(keyword_encode)&max=10&order=r")
        else {
            return
        }
        print(req_url)
        
        do {
            let (data, _) = try await URLSession.shared.data(from: req_url)
            let decoder = JSONDecoder()
            let json = try decoder.decode(ResultJson.self, from: data)

            guard let items = json.item else {
                return }
            okashiList.removeAll()
            
            for item in items {
                if let name = item.name,
                   let link = item.url,
                   let image = item.image {
                    let okashi = OkashiItem(id: link.absoluteString, name: name, url: link, image: image)

                    okashiList.append(okashi)
                }
            }
            print(okashiList)
            
        } catch {
            print("エラーが出ました")
        }
    }
}
