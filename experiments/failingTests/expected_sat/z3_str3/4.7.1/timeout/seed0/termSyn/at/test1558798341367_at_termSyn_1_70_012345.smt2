(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x92 (int.to.str tmp_int1)))
 (let ((?x1622 (str.to.int tmp_str0)))
 (let ((?x2623 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x1937 (str.at ?x2623 ?x1622)))
 (= ?x1937 ?x92))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


;actual status: timeout
