/**
 * @id ANN_18_03_004_FAIL_IMPORT_TYPE
 * @expect compile-fail
 * @section 18.3
 * @design 验证 import type 不能用于导入注解
 * @note 反向用例：注解不定义类型，import type 导致编译错误
 */
import type { MyAnno } from "../modules/ANN_18_03_MOD_MyAnno"

@MyAnno
class C {}
