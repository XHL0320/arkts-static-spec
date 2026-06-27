/**
 * @id ANN_18_02_013_PASS_ON_VARIABLE
 * @expect compile-pass
 * @section 18.2
 * @design 验证 SOURCE 策略注解可应用于变量声明
 * @note 正向用例：@Retention("SOURCE") 注解在变量上
 */
@Retention("SOURCE")
@interface ConstVal {}

@ConstVal
let x: int = 42
