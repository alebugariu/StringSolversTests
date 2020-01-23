(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int7 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x307 (str.at tmp_str0 tmp_int7)))
 (let ((?x2787 (str.indexof tmp_str0 tmp_str0 tmp_int7)))
 (let ((?x1907 (str.to.int tmp_str0)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (= (str.substr ?x2008 ?x1907 ?x2787) ?x307))))))
(check-sat)

(get-value (tmp_str0 tmp_int7 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int7 = -1


;actual status: unsat
