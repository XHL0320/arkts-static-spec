/**
 * @id GEN_05_02_03_002_FAIL_INFER_NO_CONTEXT
 * @expect compile-fail
 * @section 5.3
 * @design 无推断上下文
 * @note 反向用例：验证无推断上下文时编译错误
 */
function noInfer<T>(): T { return (null as Object as T); }
let x: number = noInfer();
