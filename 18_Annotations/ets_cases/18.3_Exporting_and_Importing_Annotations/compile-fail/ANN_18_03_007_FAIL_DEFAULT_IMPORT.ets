/**
 * @id ANN_18_03_007_FAIL_DEFAULT_IMPORT
 * @expect compile-fail
 * @section 18.3
 * @design 验证 import default 导入注解导致编译错误
 * @note 反向用例：default import 不支持注解
 */
import MyAnno from "../modules/ANN_18_03_MOD_MyAnno"

@MyAnno
class C {}
