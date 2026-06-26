/**
 * @id CLS_09_08_031_PASS_SETTER_ONLY_ACCESS
 * @expect compile-pass
 * @section 9.8
 * @design 仅定义 setter（无对应 getter）的属性声明合法，该属性为只写
 * @note 正向用例：WriteOnly 类只声明 set data，编译通过
 */
class WriteOnly { private _d: int = 0; set data(v: int) { this._d = v } }
