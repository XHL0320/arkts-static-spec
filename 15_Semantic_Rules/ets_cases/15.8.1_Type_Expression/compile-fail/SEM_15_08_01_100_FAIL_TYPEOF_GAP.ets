/**
 * @id SEM_15_08_01_100_FAIL_TYPEOF_GAP
 * @expect compile-fail
 * @section 15.8.1
 * @design 验证 typeof smart cast — Spec 要求 typeof 收窄，编译器未实现
 * @note ⚠️ SPEC 不一致：typeof x === "boolean" 后 x 应收窄为 boolean，编译错误 ESE0318
 *       分类：D 类（Spec 与实现不一致）
 */
function main(): void {
    let x: int|boolean = 42;
    if (typeof x === "boolean") {
        let b: boolean = x;
    }
}
