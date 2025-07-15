; Foo2.ll - Test per Algebraic Identity (x+0 e x*1)

define i32 @foo2(i32 %x) {
entry:
  ; Qui ci sono operazioni ridondanti che il tuo passo dovrebbe ottimizzare

  ; Caso 1: x + 0 → x
  %add0 = add i32 %x, 0

  ; Caso 2: 0 + x → x
  %add1 = add i32 0, %x

  ; Caso 3: x * 1 → x
  %mul0 = mul i32 %x, 1

  ; Caso 4: 1 * x → x
  %mul1 = mul i32 1, %x

  ; Usiamo i risultati per evitare DCE
  %sum1 = add i32 %add0, %add1
  %sum2 = add i32 %mul0, %mul1
  %res  = add i32 %sum1, %sum2

  ret i32 %res
}

