(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (let ((?x2336 (str.substr tmp_str2 tmp_int0 tmp_int0)))
 (let ((?x838 (str.at tmp_str2 tmp_int0)))
 (let ((?x1823 (int.to.str tmp_int0)))
 (let ((?x618 (str.++ ?x1823 ?x838)))
 (= ?x618 ?x2336))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a


