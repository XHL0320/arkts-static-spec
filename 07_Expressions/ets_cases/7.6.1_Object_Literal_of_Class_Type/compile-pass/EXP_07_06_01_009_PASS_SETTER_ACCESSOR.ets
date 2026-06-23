/**
 * @id EXP_07_06_01_009_PASS_SETTER_ACCESSOR
 * @expect compile-pass
 * @section 7.6.1
 * @design setter 访问器可作对象字面量字段：class OK { set attr(val: number) { ... } }，{attr: 42} 合法
 * @note 正向用例：验证 setter 访问器名能用作对象字面量中的字段
 */
class OK {
    private _attr: number = 0
    get attr(): number {
        return this._attr
    }
    set attr(val: number) {
        this._attr = val
    }
}
const a: OK = {attr: 42}
