(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int8 () Int)
(assert
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2356 (str.at tmp_str0 tmp_int8)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x1589 (str.replace ?x2008 ?x2321 ?x2356)))
 (= ?x1589 ?x2321))))))
(check-sat)

(get-value (tmp_str0 tmp_int8 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int8 = -1


