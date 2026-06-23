/**
 * @id EXP2_17_10_02_013_FAIL_NATIVE_METHOD_TYPE_MISMATCH
 * @expect compile-fail
 * @section 17.10.2
 * @design 原生方法返回类型不匹配：验证将 native method 返回值赋给不兼容类型产生编译错误 ESE0318
 * @note 反向用例：验证该场景应产生编译时错误 - Type 'Int' cannot be assigned to type 'String'
 */
class TypeSrc {
  native getNum(): int
}
function testMismatch(): void {
  let obj: TypeSrc = new TypeSrc()
  let s: string = obj.getNum()
  console.log(s)
}
