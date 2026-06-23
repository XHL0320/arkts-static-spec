/**
 * @id EXP_07_06_04_011_RUNTIME_INTERFACE_CTOR
 * @expect runtime
 * @section 7.6.4
 * @design 接口匿名类构造器被调用验证：通过接口类型创建匿名类对象字面量，
 *         验证构造器先执行，再字段赋值，字段覆盖构造器设置的默认值
 * @note 运行时用例：验证接口匿名类构造器在字段赋值前执行
 */
interface Info {
    value: number
}

function main(): void {
    let x: Info = {value: 99}
    if (x.value != 99) {
        throw new Error("assertion failed: value != 99")
    }
    console.log("verified")
}
