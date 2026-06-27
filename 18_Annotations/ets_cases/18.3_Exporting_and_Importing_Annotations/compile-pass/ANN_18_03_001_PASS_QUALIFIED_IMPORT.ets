/**
 * @id ANN_18_03_001_PASS_QUALIFIED_IMPORT
 * @expect compile-pass
 * @section 18.3
 * @design 验证导出注解 + 限定名导入使用
 * @note 正向用例：import * as ns + @ns.MyAnno
 */
import * as ns from "../modules/ANN_18_03_MOD_MyAnno"

@ns.MyAnno
class C {}
