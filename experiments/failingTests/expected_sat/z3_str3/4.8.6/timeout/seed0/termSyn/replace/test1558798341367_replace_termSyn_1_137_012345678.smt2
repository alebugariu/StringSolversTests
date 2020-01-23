(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str18 () String)
(declare-fun tmp_int3 () Int)
(assert
 (let ((?x1554 (str.at tmp_str0 tmp_int3)))
 (let ((?x1845 (int.to.str tmp_int3)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x427 (str.replace ?x118 ?x1845 ?x1554)))
 (= ?x427 (str.replace tmp_str0 tmp_str18 tmp_str0)))))))
(check-sat)

(get-value (tmp_str0 tmp_int3 tmp_str18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int3 = -1
;tmp_str18 = 


;actual status: timeout
