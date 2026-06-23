/**
 * @id CLS_09_07_004_FAIL_METHOD_FIELD_CONFLICT
 * @expect compile-fail
 * @section 9.7
 * @design 方法名与字段名冲突 — spec: "name of that method is already used for a field in the same declaration"
 * @note 反向用例：同声明中方法名与字段名重复应编译失败
 */
class Bad004 {
  value: int = 0
  value(): int { return 1 }
}
