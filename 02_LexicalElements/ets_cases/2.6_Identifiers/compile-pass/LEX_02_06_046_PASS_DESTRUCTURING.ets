/**
 * @id LEX_02_06_046_PASS_DESTRUCTURING
 * @expect compile-pass
 * @section 2.6
 * @design 解构中的标识符
 * @note compile-pass 用例：验证解构赋值中的标识符
 */

// 数组解构
let arr = [1, 2, 3]
let a = arr[0]
let b = arr[1]
let c = arr[2]

// 对象访问
interface Point {
  x: int
  y: int
}

let point: Point = { x: 10, y: 20 }
let x = point.x
let y = point.y
