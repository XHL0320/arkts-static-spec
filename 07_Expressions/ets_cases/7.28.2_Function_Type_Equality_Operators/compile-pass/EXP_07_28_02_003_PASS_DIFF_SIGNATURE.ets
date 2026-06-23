/**
 * @id EXP_07_28_02_003_PASS_DIFF_SIGNATURE
 * @expect compile-pass
 * @section 7.28.2
 * @design 验证不同参数签名的函数对象 == 比较编译通过
 * @note 正向用例：不同签名函数通过 == 比较应编译通过（spec 示例：foo == goo）
 */
function foo(): void {}
function goo(p: number): void {}

function main(): void {
  let r: boolean = foo == goo;
  let r2: boolean = foo != goo;
}
