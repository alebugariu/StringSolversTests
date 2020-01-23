(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let (($x309 (str.contains tmp_str2 tmp_str2)))
 (let ((?x903 (str.replace tmp_str2 tmp_str2 tmp_str2)))
 (let ((?x1035 (int.to.str tmp_int0)))
 (let (($x1235 (str.suffixof ?x1035 ?x903)))
 (= $x1235 $x309))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a


