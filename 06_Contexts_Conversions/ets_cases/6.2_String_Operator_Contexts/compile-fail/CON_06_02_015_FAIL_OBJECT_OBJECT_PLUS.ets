/**
 * @id CON_06_02_015_FAIL_OBJECT_OBJECT_PLUS
 * @expect compile-fail
 * @section 6.2
 * @design '+' 运算符两侧均为引用类型且无 string 操作数，不触发 string context，应编译失败
 * @note 反向用例：两个对象实例间 '+' 无定义，应产生编译时错误
 */
class X {}
class Y {}

function testObjectObjectPlusFail(): void {
  let a: X = new X()
  let b: Y = new Y()
  let s: string = a + b
}
