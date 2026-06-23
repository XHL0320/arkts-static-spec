/**
 * @id EXP_07_14_008_PASS_FUNC_CALL_CHAINING
 * @expect compile-pass
 * @section 7.14
 * @design 验证可空函数类型变量上的链式调用：nullableFunc?.() 编译通过
 * @note 正向用例：函数类型变量为 T|undefined 时使用 ?.() 调用，编译通过
 */
function main(): void {
  let fn: (() => string) | undefined = (): string => {
    return "hello";
  };
  let s: string | undefined = fn?.();
}
