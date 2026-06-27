/**
 * @id ANN_18_06_004_PASS_BYTECODE_ANNOTATION
 * @expect compile-pass
 * @section 18.6
 * @design 验证 @Retention("BYTECODE") 注解可编译
 * @note 正向用例：BYTECODE 策略注解也隐式声明抽象类
 */
@Retention("BYTECODE")
@interface MyAnno {
  name: string
}
