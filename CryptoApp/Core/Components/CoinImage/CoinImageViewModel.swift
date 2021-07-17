//
//  CoinImageViewModel.swift
//  CryptoApp
//
//  Created by Eʟᴅᴀʀ Tᴇɴɢɪᴢᴏᴠ on 17.07.2021.
//

import Foundation
import SwiftUI
import Combine

class CoinImageViewModel: ObservableObject {
    
    @Published var image: UIImage?
    @Published var isLoading = false
    
    private var coinImageService: CoinImageService
    private var cancellable = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coinImageService = CoinImageService(coin: coin)
        self.isLoading = true
        self.getImage()
    }
    
    private func getImage() {
        coinImageService.$image
            .sink { _ in
                self.isLoading = false
            } receiveValue: { [weak self] returnedImage in
                self?.image = returnedImage
            }
            .store(in: &cancellable)
    }
}
