(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int3 () Int)
(assert
 (let ((?x1327 (str.len tmp_str0)))
 (= (str.indexof (str.++ tmp_str0 tmp_str0) (int.to.str tmp_int3) ?x1327) ?x1327)))
(check-sat)

(get-value (tmp_str0 tmp_int3 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int3 = -1


;actual status: timeout
