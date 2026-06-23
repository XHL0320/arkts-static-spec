/**
 * @id NAM_04_05_01_002_PASS_TYPE_ALIAS_FUNC
 * @expect compile-pass
 * @section 4.5.1
 * @design 函数类型别名
 * @note 正向用例：验证函数类型别名
 */
type Handler = (s: string, n: number) => string;
function useHandler(h: Handler): void {}
