(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str20 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int8 () Int)
(assert
 (let ((?x563 (str.replace tmp_str0 tmp_str0 tmp_str20)))
 (let ((?x50 (int.to.str tmp_int8)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x635 (str.replace ?x130 ?x130 ?x50)))
 (= ?x635 ?x563))))))
(check-sat)

(get-value (tmp_str0 tmp_int8 tmp_str20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int8 = -1
;tmp_str20 = 


;actual status: sat

;model:
;String tmp_str20 = 4
;String tmp_str0 = aaaadk
;Int tmp_int8 = 4
