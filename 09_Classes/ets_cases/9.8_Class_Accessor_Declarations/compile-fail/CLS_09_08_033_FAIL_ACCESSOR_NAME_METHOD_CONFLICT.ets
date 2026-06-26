/**
 * @id CLS_09_08_033_FAIL_ACCESSOR_NAME_METHOD_CONFLICT
 * @expect compile-fail
 * @section 9.8
 * @design 同名 accessor 与 method 占用同一命名空间，冲突应编译失败
 * @note 反向用例：get val 与方法 val() 同名，命名空间冲突
 */
class Bad33 { get val(): int { return 1 } val(): void {} }
