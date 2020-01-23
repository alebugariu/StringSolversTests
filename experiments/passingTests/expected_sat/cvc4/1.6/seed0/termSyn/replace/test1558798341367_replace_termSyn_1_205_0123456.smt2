(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str14 () String)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str4 () String)
(assert
 (let ((?x385 (str.++ tmp_str14 tmp_str14)))
 (let ((?x2059 (str.at tmp_str4 tmp_int0)))
 (let ((?x229 (int.to.str tmp_int0)))
 (let ((?x1235 (str.replace ?x229 ?x229 ?x2059)))
 (= ?x1235 ?x385))))))
(check-sat)

(get-value (tmp_int0 tmp_str4 tmp_str14 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str4 = a
;tmp_str14 = 


;actual status: sat

;model:
;Int tmp_int0 = 0
;String tmp_str4 = 
;String tmp_str14 = 
