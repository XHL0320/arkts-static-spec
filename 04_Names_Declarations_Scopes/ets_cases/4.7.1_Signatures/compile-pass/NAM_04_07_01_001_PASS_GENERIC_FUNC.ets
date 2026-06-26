/**
 * @id NAM_04_07_01_001_PASS_GENERIC_FUNC
 * @expect compile-pass
 * @section 4.7.1
 * @design 泛型函数声明
 * @note 正向用例：验证泛型函数声明类型参数必须指定（§4.7 行 886）
 */
function identity<T>(x: T): T { return x; }
