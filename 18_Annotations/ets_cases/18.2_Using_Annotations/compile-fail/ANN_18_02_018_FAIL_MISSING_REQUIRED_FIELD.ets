/**
 * @id ANN_18_02_018_FAIL_MISSING_REQUIRED_FIELD
 * @expect compile-fail
 * @section 18.2
 * @design 验证缺少必填字段导致编译错误
 * @note 反向用例：name 没有默认值必须提供
 */
@interface Config {
  name: string
}

@Config()
class C {}
