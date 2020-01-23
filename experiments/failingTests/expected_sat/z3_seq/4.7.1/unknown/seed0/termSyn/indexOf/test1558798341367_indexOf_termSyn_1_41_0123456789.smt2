(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int3 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2565 (str.indexof tmp_str0 tmp_str0 tmp_int3)))
 (= (str.indexof (str.++ tmp_str0 tmp_str0) (int.to.str tmp_int3) ?x2565) ?x2565)))
(check-sat)

(get-value (tmp_str0 tmp_int3 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int3 = -1


;actual status: unknown
