(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x466 (str.indexof tmp_str0 tmp_str0 tmp_int2)))
 (let ((?x1327 (int.to.str ?x466)))
 (= ?x1327 (int.to.str tmp_int2)))))
(check-sat)

(get-value (tmp_str0 tmp_int2 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int2 = -1


