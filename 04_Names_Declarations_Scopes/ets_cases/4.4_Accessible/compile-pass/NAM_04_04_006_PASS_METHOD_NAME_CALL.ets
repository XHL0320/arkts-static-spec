/**
 * @id NAM_04_04_006_PASS_METHOD_NAME_CALL
 * @expect compile-pass
 * @section 4.4
 * @design 方法名可用于调用
 * @note 正向用例：验证类实例方法名可用于调用（§4.4 行 367）
 */
class Greeter {
    greet(): string { return "hello"; }
}
let g: Greeter = new Greeter();
let msg: string = g.greet();
