(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int5 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x503 (int.to.str tmp_int5)))
 (let ((?x545 (str.len tmp_str0)))
 (let ((?x2085 (str.indexof tmp_str0 tmp_str0 tmp_int5)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2587 (str.substr ?x2008 ?x2085 ?x545)))
 (= ?x2587 ?x503)))))))
(check-sat)

(get-value (tmp_str0 tmp_int5 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1


;actual status: timeout
