//--- START OF USER ZONE 1


//--- END OF USER ZONE 1

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
//  THIS FILE IS REGENERATED BY EASY BINDINGS, ONLY MODIFY IT WITHIN USER ZONES
//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

import Cocoa

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

func transient_ComponentSymbolInProject_symbolInfo (
       _ self_mComponent_deviceSymbolDictionary : DeviceSymbolDictionary?,
       _ self_mSymbolInstanceName : String,         
       _ self_mSymbolTypeName : String,             
       _ self_mCenterX : Int,                       
       _ self_mCenterY : Int
) -> ComponentSymbolInfo {
//--- START OF USER ZONE 2
        let key = TwoStrings (self_mSymbolInstanceName, self_mSymbolTypeName)
        let deviceInfo = self_mComponent_deviceSymbolDictionary! [key]!
        let tr = NSAffineTransform ()
        let componentSymbolCenter = CanariPoint (x: self_mCenterX - deviceInfo.center.x, y: self_mCenterY - deviceInfo.center.y)
        tr.translateX (by: canariUnitToCocoa (componentSymbolCenter.x), yBy: canariUnitToCocoa (componentSymbolCenter.y))
        let shape = deviceInfo.shape.transformedBy (tr)
        return ComponentSymbolInfo (shape: shape, center: componentSymbolCenter)
//--- END OF USER ZONE 2
}

//——————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
