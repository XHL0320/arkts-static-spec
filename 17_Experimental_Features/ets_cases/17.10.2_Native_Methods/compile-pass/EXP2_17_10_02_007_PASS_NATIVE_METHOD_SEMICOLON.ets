/**
 * @id EXP2_17_10_02_007_PASS_NATIVE_METHOD_SEMICOLON
 * @expect compile-pass
 * @section 17.10.2
 * @design 原生方法使用分号作为方法体：验证 native method 可以用分号终结（与无分号同样有效）
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class SemicolonNative {
  native foo(): void;
  native bar(): int;
  native baz(s: string): string;
}
