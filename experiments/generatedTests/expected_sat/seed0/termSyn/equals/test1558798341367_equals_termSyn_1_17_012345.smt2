(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let (($x930 (= tmp_str2 tmp_str2)))
 (let ((?x2848 (str.at tmp_str2 tmp_int0)))
 (let ((?x1035 (int.to.str tmp_int0)))
 (let (($x691 (= ?x1035 ?x2848)))
 (= $x691 $x930))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a


