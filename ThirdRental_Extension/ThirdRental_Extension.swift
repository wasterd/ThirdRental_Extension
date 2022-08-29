//
//  ThirdRental_Extension.swift
//  ThirdRental_Extension
//
//  Created by ya Liu on 2022/8/29.
//

import CTMediator


public extension CTMediator {
    @objc func ThirdRental_showSwift(callback:@escaping (String) -> Void) -> UIViewController? {
        let params = [
            "callback":callback,
            kCTMediatorParamsKeySwiftTargetModuleName:"ThirdRental"
            ] as [AnyHashable : Any]
        if let viewController = self.performTarget("ThirdRental", action: "Extension_ViewController", params: params, shouldCacheTarget: false) as? UIViewController {
            return viewController
        }
        return nil
    }
    
    @objc func ThirdRental_showObjc(callback:@escaping (String) -> Void) -> UIViewController? {
        let callbackBlock = callback as @convention(block) (String) -> Void
        let callbackBlockObject = unsafeBitCast(callbackBlock, to: AnyObject.self)
        let params = ["callback":callbackBlockObject] as [AnyHashable:Any]
        if let viewController = self.performTarget("ThirdRental", action: "Extension_ViewController", params: params, shouldCacheTarget: false) as? UIViewController {
            return viewController
        }
        return nil
    }
}
