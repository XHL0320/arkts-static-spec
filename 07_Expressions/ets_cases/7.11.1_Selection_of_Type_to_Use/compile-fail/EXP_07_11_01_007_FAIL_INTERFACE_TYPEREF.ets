/**
 * @id EXP_07_11_01_007_FAIL_INTERFACE_TYPEREF
 * @expect compile-fail
 * @section 7.11.1
 * @design typeReference 形式使用接口名：typeReference 必须指向类，接口应报编译时错误
 * @note 反向用例：验证接口名作为 typeReference 调用方法时编译错误
 */
interface Drawable {
    draw(): void
}
let v: string = Drawable.toString()
