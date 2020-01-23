(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int13 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2517 (int.to.str tmp_int13)))
 (let ((?x1622 (str.to.int tmp_str0)))
 (let ((?x2060 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1263 (str.at ?x2060 ?x1622)))
 (= ?x1263 ?x2517))))))
(check-sat)

(get-value (tmp_str0 tmp_int13 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int13 = -1


