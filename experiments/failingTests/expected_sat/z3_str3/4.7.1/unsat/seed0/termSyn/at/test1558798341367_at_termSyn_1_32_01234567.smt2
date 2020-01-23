(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (let ((?x1161 (str.indexof tmp_str2 tmp_str2 tmp_int0)))
 (let ((?x309 (int.to.str tmp_int0)))
 (let ((?x2125 (str.at ?x309 ?x1161)))
 (= ?x2125 (str.substr tmp_str2 tmp_int0 tmp_int0))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a


;actual status: unsat
