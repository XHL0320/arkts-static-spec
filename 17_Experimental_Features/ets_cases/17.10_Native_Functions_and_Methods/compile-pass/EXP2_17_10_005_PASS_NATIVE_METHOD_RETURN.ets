/**
 * @id EXP2_17_10_005_PASS_NATIVE_METHOD_RETURN
 * @expect compile-pass
 * @section 17.10
 * @design 验证 native 方法带返回类型编译通过
 * @note 正向用例：native 方法声明 int 返回类型编译通过
 */
class Calc {
  native multiply(x: int, y: int): int
}

function main(): void {
  let c: Calc = new Calc()
  console.log("native method with return type")
}

