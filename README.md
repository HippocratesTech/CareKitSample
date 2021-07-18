# OTFCareKitSample

This framework contains a sample app source that demonstrates how to use CareKit's APIs. You can use it as a reference, or you can fork it and make it the starting point for your own app!

# How to implement in a project

User can install OTFCareKitSample using the cocoapod as shown below -
```
pod 'OTFCareKitSample', '1.0'
```

It will install the OTFToolBoxShowcase into your project. Now to launch the sample app from your test project all you need to do is to import the framework first and then initialize the OTFToolBoxShowcase inside SceneDelegate class like shown below - 

```
import OTFCareKitSample
class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        if let window = window {
            let shared = OTFCareKitSample.shared
            shared.launchIn(window)
        }
    }

}

```
You can use above code if your project has a sceneDelegate class, and if you don't have a sceneDelegate you can simply use you AppDelegate class to launch the sample app -

```
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
    self.window = UIWindow(frame: UIScreen.main.bounds)
    
    if let window = window { 
        let shared = OTFCareKitSample.shared
        shared.launchIn(self.window)
    }
    
    return true
}
```

But before running the app you also need to enable HealthKit capability under Signing & Capabilities. along with it you need to add two privacy keys into your project's plist file along with there usage description.

```
Privacy - Health Update Usage Description

&&

Privacy - Health Share Usage Description
```

After doing these configurations, Now you can run your project and you should see the permission popup at first launch. If you won't see the popup, it could be due to previous failed authorization of HealthKit permission. In that case please delete the app and launch it again, and you should see the HealthKit permission popup this time. Allow all permissions and use the app.
