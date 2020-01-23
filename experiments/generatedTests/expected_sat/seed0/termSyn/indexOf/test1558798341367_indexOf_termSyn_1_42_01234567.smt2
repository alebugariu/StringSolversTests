(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int3 () Int)
(assert
 (let ((?x1081 (str.to.int tmp_str0)))
 (let ((?x2565 (str.indexof tmp_str0 tmp_str0 tmp_int3)))
 (let ((?x1845 (int.to.str tmp_int3)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x380 (str.indexof ?x118 ?x1845 ?x2565)))
 (= ?x380 ?x1081)))))))
(check-sat)

(get-value (tmp_str0 tmp_int3 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int3 = -1


