/**
 * @id SEM_15_11_4_098
 * @expect compile-fail
 * @section 15.11.4
 * @design 冲突签名
 * @note 反向用例
 */
class C { static dup(x: int): string { return "a"; } static dup(x: int): string { return "b"; } }
function main(): void {}
