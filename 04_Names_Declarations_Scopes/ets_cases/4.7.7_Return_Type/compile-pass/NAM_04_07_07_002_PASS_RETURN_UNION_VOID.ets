/**
 * @id NAM_04_07_07_002_PASS_RETURN_UNION_VOID
 * @expect compile-pass
 * @section 4.7.7
 * @design 联合类型含 void/undefined 可省略 return
 * @note 正向用例：验证 `: number | void` 返回类型允许空函数体（§4.7 行 1378）
 */
function f1(): number | void {}
function f2(): string | undefined {}
