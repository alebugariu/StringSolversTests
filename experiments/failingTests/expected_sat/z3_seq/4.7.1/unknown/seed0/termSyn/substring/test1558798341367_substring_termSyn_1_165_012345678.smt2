(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int8 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x50 (int.to.str tmp_int8)))
 (let ((?x2515 (str.indexof tmp_str0 tmp_str0 tmp_int8)))
 (let ((?x1081 (str.to.int tmp_str0)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2203 (str.substr ?x130 ?x1081 ?x2515)))
 (= ?x2203 ?x50)))))))
(check-sat)

(get-value (tmp_str0 tmp_int8 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int8 = -1


;actual status: unknown
