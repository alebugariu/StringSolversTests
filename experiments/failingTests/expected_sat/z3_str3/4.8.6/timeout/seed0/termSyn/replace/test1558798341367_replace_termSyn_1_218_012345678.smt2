(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str4 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x198 (str.replace tmp_str4 tmp_str4 tmp_str4)))
 (let ((?x229 (int.to.str tmp_int0)))
 (let ((?x1080 (str.replace ?x229 ?x229 ?x198)))
 (= ?x1080 ?x198)))))
(check-sat)

(get-value (tmp_int0 tmp_str4 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str4 = a


;actual status: timeout
