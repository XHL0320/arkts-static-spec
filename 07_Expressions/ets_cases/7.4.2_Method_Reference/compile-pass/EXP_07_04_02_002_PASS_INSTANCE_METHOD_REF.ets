/**
 * @id EXP_07_04_02_002_PASS_INSTANCE_METHOD_REF
 * @expect compile-pass
 * @section 7.4.2
 * @design 实例方法引用：验证 new C().bar 方式引用实例方法编译通过
 * @note 正向用例：验证实例方法引用基本语法编译通过，引用与实例绑定
 */
class C {
  bar(s: string): boolean {
    return true
  }
}

let m2 = new C().bar  // 实例方法引用，类型为 (s: string) => boolean
