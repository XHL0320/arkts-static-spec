/**
 * @id NAM_04_02_105_FAIL_OVERLOAD_TYPE_ERASURE
 * @expect compile-fail
 * @section 4.2.1
 * @design 类型擦除导致重载等价
 * @note 反向用例：验证泛型类型擦除后签名等价编译错误
 */
function bar(x: Array<number>): void {}
function bar(x: Array<string>): void {}
