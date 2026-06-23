/**
 * @id EXP_07_05_01_017_PASS_CLASS_ARRAY_CONTEXT
 * @expect compile-pass
 * @section 7.5.1
 * @design 类类型数组上下文：Array<aClass> 使用类实例初始化
 * @note 正向用例：验证类类型作为数组元素时推断编译通过
 */
class aClass {}

let b1: Array<aClass> = [new aClass(), new aClass()]
