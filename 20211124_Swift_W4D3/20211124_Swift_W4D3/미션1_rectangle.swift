import Foundation

print("Hello, World!")

//함수 자연스럽게 사용하기
/*미션 1~3 단위 변환*/
func convertToCM(fromInches : Float) -> Float{
    return fromInches * 12
}
print(convertToCM(fromInches: 15))

func convertToInches(fromCM : Float) -> Float{
    return fromCM / 12
}
print(convertToCM(fromInches: 120))

func convertToInches(fromMeter : Float) -> Float{
    return fromMeter * 100
}
print(convertToInches(fromMeter: 5))

/*Rectangle */
//struct로 선언한 경우 하단에 별도 변수를 선언해준 후 해당 스트럭트 변수를 선언 후에 그 값을 입력해준다. 그리고 후에 선언된 변수의 함수를 사용한다.

struct rectangle{
    var leftTopX : Float
    var leftTopY : Float
    var rightBottomX : Float
    var rightBottomY : Float
    
    func printRect(){
        print("LeftTop:\(leftTopX),\(leftTopY), LeftBottom:\(leftTopX),\(rightBottomY), RightTop:\(rightBottomX),\(leftTopY), RightBottom:\(rightBottomX),\( rightBottomY)")
    }
    
    func printArea(){
        let length : Float = rightBottomX - leftTopX
        let height : Float = leftTopY - rightBottomY
        let result : Float = length * height
        
        print("면적: \(result)")
    }
    
    func printCenter(){
        let centerPoint : Float =
    }
    
}
var rect:rectangle = rectangle(leftTopX: 4.5, leftTopY: 10.5, rightBottomX: 15.0, rightBottomY: 3.5)

rect.printRect()
rect.printArea()

