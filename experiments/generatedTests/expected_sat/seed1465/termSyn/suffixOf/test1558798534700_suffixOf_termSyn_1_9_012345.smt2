(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let (($x16 (= tmp_str0 tmp_str0)))
 (let ((?x815 (int.to.str tmp_int1)))
 (let ((?x2149 (str.at tmp_str0 tmp_int1)))
 (let (($x604 (str.suffixof ?x2149 ?x815)))
 (= $x604 $x16))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


