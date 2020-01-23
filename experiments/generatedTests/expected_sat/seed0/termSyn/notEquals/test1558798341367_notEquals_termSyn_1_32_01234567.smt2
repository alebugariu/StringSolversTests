(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let (($x1247 (str.contains tmp_str0 tmp_str16)))
 (let ((?x878 (str.at tmp_str0 tmp_int5)))
 (let ((?x2052 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (= ?x2052 ?x878) $x1247)))))
(check-sat)

(get-value (tmp_str0 tmp_int5 tmp_str16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_str16 = -1


