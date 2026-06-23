/**
 * @id EXP_07_06_01_020_RUNTIME_SETTER_ACCESSOR
 * @expect runtime
 * @section 7.6.1
 * @design setter 访问器运行时验证：对象字面量 {attr: 42} 触发 setter，验证 backing field 值
 * @note 运行时用例：验证对象字面量中 setter 访问器被正确调用
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

function main(): void {
    const a: OK = {attr: 42}
    if (a.attr != 42) {
        throw new Error("assertion failed: attr != 42, got " + a.attr)
    }
    console.log("verified")
}
