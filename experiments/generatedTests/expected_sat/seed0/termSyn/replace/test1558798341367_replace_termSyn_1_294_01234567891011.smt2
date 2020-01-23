(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int8 () Int)
(assert
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1696 (str.substr tmp_str0 tmp_int8 tmp_int8)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x1333 (str.replace ?x130 ?x118 ?x1696)))
 (= ?x1333 ?x130))))))
(check-sat)

(get-value (tmp_str0 tmp_int8 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int8 = -1


