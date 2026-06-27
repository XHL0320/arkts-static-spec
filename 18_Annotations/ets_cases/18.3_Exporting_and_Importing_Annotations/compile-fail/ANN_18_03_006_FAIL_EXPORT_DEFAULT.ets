/**
 * @id ANN_18_03_006_FAIL_EXPORT_DEFAULT
 * @expect compile-fail
 * @section 18.3
 * @design 验证 export default @interface 导致编译错误
 * @note 反向用例：注解不支持 export default
 */
export default @interface MyAnno {}
