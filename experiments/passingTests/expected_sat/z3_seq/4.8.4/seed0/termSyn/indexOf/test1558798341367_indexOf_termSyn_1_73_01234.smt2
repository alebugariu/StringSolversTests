(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str4 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x1671 (str.to.int tmp_str4)))
 (let ((?x229 (int.to.str tmp_int0)))
 (let ((?x2319 (str.indexof ?x229 ?x229 ?x1671)))
 (= ?x2319 ?x1671)))))
(check-sat)

(get-value (tmp_int0 tmp_str4 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str4 = a


;actual status: sat

;model:
;Int tmp_int0 = -1
;String tmp_str4 = 
