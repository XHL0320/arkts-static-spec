/**
 * @id EXP_07_04_01_005_PASS_INDIVIDUAL_OVERLOAD_REF
 * @expect compile-pass
 * @section 7.4.1
 * @design 单个显式重载函数引用：验证显式重载中单个函数名可以作为引用
 * @note 正向用例：foo2 是显式重载中的单个函数，可以作为引用编译通过
 */
function foo1(n: number): void {}
function foo2(s: string): void {}
overload foo { foo1, foo2 }

let y = foo2  // OK，引用单个显式重载函数
