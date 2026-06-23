/**
 * @id EXP_07_09_006_PASS_INTERFACE_DEFAULT_THIS
 * @expect compile-pass
 * @section 7.9
 * @design 接口默认方法中使用 this：接口默认方法体中 this 类型为接口类型
 * @note 正向用例：验证接口默认方法中的 this 引用
 */
interface Greeter {
    greeting: string
    greet(): string
}
class HelloGreeter implements Greeter {
    greeting: string = "Hello"
    greet(): string {
        return this.greeting
    }
}
let g: Greeter = new HelloGreeter()
let msg: string = g.greet()
