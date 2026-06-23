/**
 * @id SEM_15_11_04_101_FAIL_conflicting_signatures
 * @expect compile-fail
 * @section 15.11.4
 * @design 冲突签名
 * @note 反向用例
 */
class C { static dup(x: int): string { return "a"; } static dup(x: int): string { return "b"; } }
function main(): void {}
