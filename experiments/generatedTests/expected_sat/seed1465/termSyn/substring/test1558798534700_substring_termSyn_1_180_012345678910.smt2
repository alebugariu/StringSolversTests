(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x836 (int.to.str tmp_int1)))
 (let ((?x40 (str.indexof tmp_str0 tmp_str0 tmp_int1)))
 (let ((?x1363 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x1092 (str.substr ?x1363 ?x40 ?x40)))
 (= ?x1092 ?x836))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


