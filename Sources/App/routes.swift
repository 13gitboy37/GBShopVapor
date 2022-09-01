import Vapor

func routes(_ app: Application) throws {
    let authControler = AuthController()
    app.post("registration", use: authControler.register(_:))
    
    let loginController = LoginController()
    app.post("login", use: loginController.login(_:))
    
    let logoutController = LogoutController()
    app.post("logout", use: logoutController.logout(_:))
    
    let changeUserDataController = ChangeUserDataController()
    app.post("changeUserData", use: changeUserDataController.changeUserData(_:))
    
    let goodController = GoodController()
    app.post("getGood", use: goodController.getGood(_:))
    
    let catalogController = CatalogController()
    app.post("getCatalog", use: catalogController.getCatalog(_:))
    
    let getReviewsController = GetReviewsController()
    app.post("getReviews", use: getReviewsController.getReviews(_:))
    
    let addReviewsController = AddReviewController()
    app.post("addReview", use: addReviewsController.addReview(_:))
    
    let removeReviewController = RemoveReviewController()
    app.post("removeReview", use: removeReviewController.removeReview(_:))
}

