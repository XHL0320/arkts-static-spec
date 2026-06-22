/**
 * @id CON_06_02_013_FAIL_ENUM_ENUM_PLUS
 * @expect compile-fail
 * @section 6.2
 * @design '+' 运算符两侧均为枚举类型且无 string 操作数，不触发 string context，应编译失败
 * @note 反向用例：两个枚举值间 '+' 无定义，应产生编译时错误
 */
enum A { X = 1, Y = 2 }
enum B { P = 3, Q = 4 }

function testEnumEnumPlusFail(): void {
  let s: string = A.X + B.P
}
