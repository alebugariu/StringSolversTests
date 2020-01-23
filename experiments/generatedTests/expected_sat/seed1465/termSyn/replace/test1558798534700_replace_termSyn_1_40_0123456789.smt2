(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x816 (str.at tmp_str0 tmp_int1)))
 (let ((?x1556 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x1157 (str.++ tmp_str0 tmp_str0)))
 (= (str.replace ?x816 ?x1157 ?x1556) ?x816)))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


