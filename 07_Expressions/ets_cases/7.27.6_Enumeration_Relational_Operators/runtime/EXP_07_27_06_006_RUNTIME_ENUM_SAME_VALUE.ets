/**
 * @id EXP_07_27_06_006_RUNTIME_ENUM_SAME_VALUE
 * @expect runtime
 * @section 7.27.6
 * @design 同值枚举关系比较

 * @note 运行时用例：实际执行验证同值枚举比较
 */
enum Dup { X = 1, Y = 1 }
function main(): void {
  let a: Dup = Dup.X; let b: Dup = Dup.Y
  if (a < b) { throw new Error("assertion failed: X(1) should not be < Y(1)")
  }
  if (!(a <= b)) { throw new Error("assertion failed: X(1) <= Y(1)")
  }
  console.log("verified")
}
