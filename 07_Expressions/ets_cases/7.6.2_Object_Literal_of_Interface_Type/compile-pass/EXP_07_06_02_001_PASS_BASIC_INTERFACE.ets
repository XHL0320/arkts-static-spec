/**
 * @id EXP_07_06_02_001_PASS_BASIC_INTERFACE
 * @expect compile-pass
 * @section 7.6.2
 * @design 基本接口类型：普通属性 name、setter surname、getter age 映射为匿名类字段
 * @note 正向用例：验证接口类型上下文推断和多种属性形式的字段映射
 */
interface Person {
    name: string
    set surname(s: string)
    get age(): number
}
let b: Person = {name: "Bob", surname: "Doe", age: 25}
