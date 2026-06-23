/**
 * @id EXP_07_10_03_007_RUNTIME_SUPER_SETTER_VALUE
 * @expect runtime
 * @section 7.10.3
 * @design 运行时验证 super setter 调用：子类通过 super setter 设置超类属性值
 * @note 运行时用例：验证 super.property = val 在 setter 中正确设置超类值
 */
class Base {
    private _val: int = 0
    get data(): int {
        return this._val
    }
    set data(v: int) {
        this._val = v
    }
}
class Derived extends Base {
    set data(v: int) {
        super.data = v + 1
    }
}
function main(): void {
    let d: Derived = new Derived()
    d.data = 10
    let v: int = d.data
    if (v != 11) {
        throw new Error("assertion failed: super setter value")
    }
    console.log("verified")
}
