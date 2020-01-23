(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str20 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int7 () Int)
(assert
 (let ((?x1153 (str.++ tmp_str0 tmp_str20)))
 (let ((?x2218 (int.to.str tmp_int7)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2589 (str.replace ?x2321 ?x2008 ?x2218)))
 (= ?x2589 ?x1153)))))))
(check-sat)

(get-value (tmp_str0 tmp_int7 tmp_str20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int7 = -1
;tmp_str20 = 


;actual status: unknown
