(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int6 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2416 (str.at tmp_str0 tmp_int6)))
 (let ((?x2007 (str.indexof tmp_str0 tmp_str0 tmp_int6)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.substr ?x2321 ?x2007 ?x2007) ?x2416)))))
(check-sat)

(get-value (tmp_str0 tmp_int6 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int6 = -1


;actual status: unsat
