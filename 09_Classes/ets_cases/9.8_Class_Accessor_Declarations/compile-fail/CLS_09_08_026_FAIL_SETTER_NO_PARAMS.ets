/**
 * @id CLS_09_08_026_FAIL_SETTER_NO_PARAMS
 * @expect compile-fail
 * @section 9.8
 * @design setter必须有参数
 * @note 反向用例
 */
class Bad { set value(): void {} }
