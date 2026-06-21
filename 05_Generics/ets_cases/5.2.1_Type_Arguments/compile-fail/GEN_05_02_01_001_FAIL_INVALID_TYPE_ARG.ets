/**
 * @id GEN_05_02_01_001_FAIL_INVALID_TYPE_ARG
 * @expect compile-fail
 * @section 5.2.1
 * @design 非泛型类型使用类型参数应报错
 * @note 反向用例：非泛型类型不可带类型参数
 */
class NotGeneric {}
let x: NotGeneric<number> = new NotGeneric<number>();
