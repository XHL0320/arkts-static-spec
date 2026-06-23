/**
 * @id LEX_02_04_030_PASS_OBJ_LITERAL_LINE_SEP
 * @expect compile-pass
 * @section 2.4
 * @design 对象字面量内换行
 * @note compile-pass 用例：验证对象字面量中的换行符
 */

// 对象字面量内换行（需要显式类型）
interface Point {
  x: int
  y: int
  z: int
}

let obj1: Point = {
  x: 1,
  y: 2,
  z: 3
}

// 单行对象字面量
let obj2: Point = { x: 1, y: 2, z: 3 }

// 嵌套对象字面量
interface Nested {
  a: Point
  b: Point
}

let obj3: Nested = {
  a: {
    x: 1,
    y: 2,
    z: 3
  },
  b: {
    x: 4,
    y: 5,
    z: 6
  }
}
