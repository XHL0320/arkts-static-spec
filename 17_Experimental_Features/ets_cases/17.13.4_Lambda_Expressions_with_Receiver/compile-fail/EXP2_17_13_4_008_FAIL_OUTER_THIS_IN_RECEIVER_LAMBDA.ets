/**
 * @id EXP2_17_13_4_008_FAIL_OUTER_THIS_IN_RECEIVER_LAMBDA
 * @expect compile-fail
 * @section 17.13.4
 * @design 接收者lambda内部this绑定到接收者，不能引用外围类的this — ESE0202
 * @note 反向用例：验证该场景应产生编译时错误
 */
class Outer { field: string = "outer"
  createLambda(): void {
    let inner = (this: string): string => { return this + this.field }
    let r: string = inner("test")
  }
}
