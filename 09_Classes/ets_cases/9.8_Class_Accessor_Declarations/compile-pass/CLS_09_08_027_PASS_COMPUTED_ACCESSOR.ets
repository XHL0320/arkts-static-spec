/**
 * @id CLS_09_08_027_PASS_COMPUTED_ACCESSOR
 * @expect compile-pass
 * @section 9.8
 * @design 计算属性getter
 * @note 正向用例
 */
class Person { forename: string = ""; surname: string = ""; get fullName(): string { return this.surname + " " + this.forename } }
