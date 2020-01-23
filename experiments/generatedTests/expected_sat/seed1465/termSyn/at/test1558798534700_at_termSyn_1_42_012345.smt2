(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (let ((?x2336 (str.substr tmp_str2 tmp_int0 tmp_int0)))
 (let ((?x152 (str.to.int tmp_str2)))
 (let ((?x1823 (int.to.str tmp_int0)))
 (let ((?x2105 (str.at ?x1823 ?x152)))
 (= ?x2105 ?x2336))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a


