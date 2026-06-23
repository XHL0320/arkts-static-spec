/**
 * @id EXP_07_10_03_003_PASS_SUPER_GETTER_SETTER
 * @expect compile-pass
 * @section 7.10.3
 * @design super 同时调用超类 getter 和 setter：子类重写 getter 和 setter，均通过 super 委托
 * @note 正向用例：验证 super 可同时用于 getter 和 setter 调用
 */
class Base {
    private _value: int = 0
    get prop(): int {
        return this._value
    }
    set prop(v: int) {
        this._value = v
    }
}
class Derived extends Base {
    get prop(): int {
        return super.prop * 2
    }
    set prop(v: int) {
        if (v >= 0) {
            super.prop = v
        }
    }
}
let d: Derived = new Derived()
d.prop = 5
let v: int = d.prop
