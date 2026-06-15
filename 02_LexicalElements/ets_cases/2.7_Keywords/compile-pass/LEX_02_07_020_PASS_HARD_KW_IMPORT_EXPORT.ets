/**
 * @id LEX_02_07_020_PASS_HARD_KW_IMPORT_EXPORT
 * @expect compile-pass
 * @section 2.7
 * @design 硬关键字: export (import 需多文件，此处仅 export)
 * @note 正向用例：模块关键字
 */
export class Exported020 {
  v: int = 0
}

export function exportedFunc020(): int {
  return 1
}

export const PI020: double = 3.14
