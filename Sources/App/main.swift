import Vapor

let drop = Droplet()

drop.get { req in
    return try drop.view.make("welcome", [
        "message": drop.localization[req.lang, "welcome", "title"]
        ])
}

drop.get("helloswift"){ request in
    return "Hello Swift"
}

drop.get("hello", String.self) { request, name in
    return "Hello \(name)"
    
}

drop.resource("posts", PostController())

drop.run()

