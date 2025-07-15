; Caso: a = b + 1 ; c = a - 1  => c = b

define i32 @foo3(i32 %b) {
entry:
  ; Prima istruzione: a = b + 1
  %a = add i32 %b, 1

  ; Seconda istruzione: c = a - 1
  %c = sub i32 %a, 1

  ; Usiamo il risultato per evitare DCE
  ret i32 %c
}
