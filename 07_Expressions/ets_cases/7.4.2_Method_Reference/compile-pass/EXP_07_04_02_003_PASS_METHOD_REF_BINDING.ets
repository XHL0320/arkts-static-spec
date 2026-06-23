/**
 * @id EXP_07_04_02_003_PASS_METHOD_REF_BINDING
 * @expect compile-pass
 * @section 7.4.2
 * @design 方法引用实例绑定：验证不同实例的方法引用各自绑定互不影响
 * @note 正向用例：验证 m1 绑定到 c1，m2 绑定到 c2，两者独立编译通过
 */
class C {
  field: number = 123
  method(): number {
    return this.field
  }
}

let c1 = new C()
let c2 = new C()
let m1 = c1.method  // c1 被绑定
let m2 = c2.method  // c2 被绑定
