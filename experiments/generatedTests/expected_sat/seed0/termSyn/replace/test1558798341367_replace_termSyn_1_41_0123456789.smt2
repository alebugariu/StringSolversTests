(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str20 () String)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1846 (str.++ tmp_str20 tmp_str20)))
 (let ((?x2482 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2321 (str.at tmp_str0 tmp_int1)))
 (let ((?x1105 (str.replace ?x2321 ?x118 ?x2482)))
 (= ?x1105 ?x1846)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str20 = 


