/**
 * @id EXP_07_10_03_008_RUNTIME_SUPER_GETSET_CHAIN
 * @expect runtime
 * @section 7.10.3
 * @design 运行时验证 super getter+setter 完整链：先通过 super setter 设置，再通过 super getter 读取
 * @note 运行时用例：验证 super 同时在 getter 和 setter 中正确工作
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
        if (super.prop == 0) {
            return -1
        }
        return super.prop
    }
    set prop(v: int) {
        if (v >= 0) {
            super.prop = v
        }
    }
}
function main(): void {
    let d: Derived = new Derived()
    // 初始值 0，getter 返回 -1
    if (d.prop != -1) {
        throw new Error("assertion failed: initial getter value")
    }
    // 设置正值，通过 super setter 设置
    d.prop = 42
    if (d.prop != 42) {
        throw new Error("assertion failed: after setter value")
    }
    console.log("verified")
}
