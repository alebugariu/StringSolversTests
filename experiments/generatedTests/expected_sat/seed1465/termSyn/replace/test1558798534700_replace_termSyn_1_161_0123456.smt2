(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (let ((?x1186 (int.to.str tmp_int0)))
 (let ((?x305 (str.at tmp_str2 tmp_int0)))
 (let ((?x2645 (str.replace ?x1186 ?x305 ?x305)))
 (= ?x2645 ?x1186)))))
(check-sat)

(get-value (tmp_int0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a


