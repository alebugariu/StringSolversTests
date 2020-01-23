(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int14 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x635 (str.substr tmp_str0 tmp_int14 tmp_int14)))
 (let ((?x1622 (str.to.int tmp_str0)))
 (let ((?x2060 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1263 (str.at ?x2060 ?x1622)))
 (= ?x1263 ?x635))))))
(check-sat)

(get-value (tmp_str0 tmp_int14 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int14 = -1


;actual status: timeout
