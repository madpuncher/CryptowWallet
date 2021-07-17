//
//  CoinImageService.swift
//  CryptoApp
//
//  Created by Eʟᴅᴀʀ Tᴇɴɢɪᴢᴏᴠ on 17.07.2021.
//

import Foundation
import SwiftUI
import Combine

class CoinImageService {
    
    @Published var image: UIImage?
    
    private var coinImageCancellable: AnyCancellable?
    
    init(coin: CoinModel) {
        downloadImage(URLString: coin.image)
    }
    
    func downloadImage(URLString: String) {
        guard let url = URL(string: URLString) else { return }
        
        coinImageCancellable = NetworkingManager.download(url: url)
            .tryMap({ data -> UIImage? in
                return UIImage(data: data)
            })
            .sink(receiveCompletion: NetworkingManager.completionHandle, receiveValue: { [weak self] returnedImage in
                self?.image = returnedImage
                self?.coinImageCancellable?.cancel()
            })
    }
    
}
