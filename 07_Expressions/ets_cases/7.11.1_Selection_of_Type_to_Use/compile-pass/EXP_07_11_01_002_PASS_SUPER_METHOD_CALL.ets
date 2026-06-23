/**
 * @id EXP_07_11_01_002_PASS_SUPER_METHOD_CALL
 * @expect compile-pass
 * @section 7.11.1
 * @design super 形式：super.method() 调用超类的实例方法
 * @note 正向用例：验证 super.method() 选择超类类型搜索方法
 */
class Base {
    greet(): string {
        return "Hello"
    }
}
class Derived extends Base {
    greet(): string {
        return super.greet() + " World"
    }
}
let d: Derived = new Derived()
let msg: string = d.greet()
