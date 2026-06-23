/**
 * @id LEX_02_09_05_018_PASS_BOOLEAN_LOOP
 * @expect compile-pass
 * @section 2.9.5
 * @design 布尔在循环中
 * @note compile-pass 用例：验证布尔在循环中的使用
 */

// 布尔在 while 循环中
let i = 0
while (i < 10) {
  i++
}

// 布尔在 for 循环中
for (let j = 0; j < 5; j++) {
  let x = j
}

// 布尔在 do-while 循环中
let k = 0
do {
  k++
} while (k < 5)
