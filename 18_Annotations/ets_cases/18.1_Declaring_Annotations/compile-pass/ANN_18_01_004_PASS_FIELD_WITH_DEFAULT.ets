/**
 * @id ANN_18_01_004_PASS_FIELD_WITH_DEFAULT
 * @expect compile-pass
 * @section 18.1
 * @design 验证带默认常量的注解字段声明可通过编译
 * @note 正向用例：字段默认值为常量表达式
 */
@interface Defaults {
  name: string = "default"
  count: number = 42
  flag: boolean = true
}
