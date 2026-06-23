/**
 * @id EXP_07_15_003_PASS_NEW_STORE_VARIABLE
 * @expect compile-pass
 * @section 7.15
 * @design 验证 new 表达式结果赋值给变量并访问字段
 * @note 正向用例：创建实例并存储到变量
 */
class A {
  v: string
  constructor(v: string) {
    this.v = v
  }
}
let a = new A("hello")
let s: string = a.v
