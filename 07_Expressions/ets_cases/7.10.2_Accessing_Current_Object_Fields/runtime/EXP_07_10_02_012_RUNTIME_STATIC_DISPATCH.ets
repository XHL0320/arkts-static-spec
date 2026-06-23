/**
 * @id EXP_07_10_02_012_RUNTIME_STATIC_DISPATCH
 * @expect runtime
 * @section 7.10.2
 * @design 声明类型决定字段可见性（Compile-time），运行时字段覆写（Override）生效
 * @note 运行时用例：验证 ArkTS 字段覆写语义（与 Java 不同，ArkTS 字段被 override 后通过父类引用也访问子类值）
 *       ArkTS 子类同名字段自动覆写父类字段（字段 Override，非 Java 的 Hide 语义）
 */
class Base {
    value: int = 10
}
class Derived extends Base {
    value: int = 20
}
function main(): void {
    let d: Derived = new Derived()
    let b: Base = d
    // ArkTS 中同名字段自动覆写父类字段（Override 语义）
    // 因此通过 Base 引用也访问到 Derived 覆写后的值 20
    if (b.value != 20) {
        throw new Error("assertion failed: overridden field value via Base ref")
    }
    // d 的声明类型是 Derived，访问 Derived.value = 20
    if (d.value != 20) {
        throw new Error("assertion failed: derived field access")
    }
    console.log("verified")
}
