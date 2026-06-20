/**
 * @id NAM_04_06_022_FAIL_AMBIGUOUS_VAR_NO_TYPE
 * @expect compile-fail
 * @section 4.6.1
 * @design ambient变量声明缺少类型注解
 * @note 反向用例：验证 ambient 声明无类型注解且无初始化编译错误（spec 4.6.1 行 616）
 */
declare let x: number;  // OK: has type, no initializer

declare let y;          // Compile-time error: ambient variable must have type
