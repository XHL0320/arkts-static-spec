/**
 * @id ANN_18_06_001_PASS_RUNTIME_STRING_FIELD
 * @expect compile-pass
 * @section 18.6
 * @design 验证 @Retention("RUNTIME") 注解含 string 字段可编译
 * @note 正向用例：RUNTIME 策略注解隐式声明抽象类
 */
@Retention("RUNTIME")
@interface MyAnno {
  name: string
}
