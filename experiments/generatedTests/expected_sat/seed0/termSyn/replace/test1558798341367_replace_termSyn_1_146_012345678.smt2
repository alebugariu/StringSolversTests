(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str20 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int7 () Int)
(assert
 (let ((?x339 (int.to.str tmp_int7)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x1053 (str.replace ?x118 ?x130 ?x339)))
 (= ?x1053 (str.++ tmp_str0 tmp_str20)))))))
(check-sat)

(get-value (tmp_str0 tmp_int7 tmp_str20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int7 = -1
;tmp_str20 = 


