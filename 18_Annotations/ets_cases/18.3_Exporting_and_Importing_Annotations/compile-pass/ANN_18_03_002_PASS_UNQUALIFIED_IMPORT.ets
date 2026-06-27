/**
 * @id ANN_18_03_002_PASS_UNQUALIFIED_IMPORT
 * @expect compile-pass
 * @section 18.3
 * @design 验证导出注解 + 非限定名导入使用
 * @note 正向用例：import { MyAnno } + @MyAnno
 */
import { MyAnno } from "../modules/ANN_18_03_MOD_MyAnno"

@MyAnno
class C {}
