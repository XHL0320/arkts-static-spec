/**
 * @id LEX_02_08_003_PASS_EQUALITY_OPS
 * @expect compile-pass
 * @section 2.8
 * @design 相等性运算符 == != === !== 在同类型操作数上的使用
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testEqualityOps(): void {
  let a: number = 5
  let b: number = 5
  let r1: boolean = a == b
  let r2: boolean = a != b
  let r3: boolean = a === b
  let r4: boolean = a !== b
  let s1: string = "abc"
  let s2: string = "abc"
  let r5: boolean = s1 === s2
  let r6: boolean = s1 !== s2
}
