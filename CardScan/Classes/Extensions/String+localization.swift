import Foundation

@available(*, deprecated, message: "Replaced by stripe card scan. See https://github.com/stripe/stripe-ios/tree/master/StripeCardScan")
extension String {
    func localize(_ name: String) -> String {
        let path = CSBundle.bundle()?.path(forResource: name, ofType: "lproj")
        let bundle = Bundle(path: path!)
        return NSLocalizedString(self, tableName: nil, bundle: bundle ?? Bundle.main, value: self, comment: self)
    }
}
