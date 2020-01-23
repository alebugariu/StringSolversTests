(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int7 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1348 (str.substr tmp_str0 tmp_int7 tmp_int7)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2188 (str.replace ?x118 ?x118 ?x1348)))
 (= ?x2188 ?x1348)))))
(check-sat)

(get-value (tmp_str0 tmp_int7 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int7 = -1


