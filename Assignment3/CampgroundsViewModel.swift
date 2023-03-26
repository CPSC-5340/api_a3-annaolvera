//
//  CampgroundsViewModel.swift
//  Assignment3
//
//  Created by user231253 on 3/25/23.
//

import Foundation

class CampgroundsViewModel : ObservableObject {
    
    @Published private(set) var campgroundsData = [CampgroundModel]()
    @Published var hasAnError = false
    @Published var error : CampgroundModelError?
    
    private let url = "https://developer.nps.gov/api/v1/campgrounds?limit=85&start=0&api_key=80E3mRpNGNAPXP9chxFUUPNtWO5rk9X22b8nkwCa"
    
    
    @MainActor
    func fetchData() async {
        if let url = URL(string: self.url) {
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                guard let results = try JSONDecoder().decode(CampgroundsResults?.self, from: data) else {
                    self.hasAnError.toggle()
                    self.error = CampgroundModelError.decodeError1
                    return
                }
                self.campgroundsData = results.data
            } catch {
                self.hasAnError.toggle()
                self.error = CampgroundModelError.otherError(error: error)
            }
        }
    }
}

extension CampgroundsViewModel {
        enum CampgroundModelError : LocalizedError {
            case decodeError1
            case otherError(error: Error)
            
            var errorDescription: String? {
                switch self {
                case.decodeError1:
                    return "Error When Decoding"
                case.otherError(let error):
                    return error.localizedDescription
                }
        }
        
    }
}
