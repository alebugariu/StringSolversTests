(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x604 (str.replace tmp_str2 tmp_str2 tmp_str2)))
 (let ((?x1823 (int.to.str tmp_int0)))
 (let ((?x2447 (str.++ ?x1823 ?x604)))
 (= ?x2447 ?x604)))))
(check-sat)

(get-value (tmp_int0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a


