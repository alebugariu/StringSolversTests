(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let ((?x1327 (str.len tmp_str0)))
 (let ((?x628 (str.at tmp_str0 tmp_int4)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (= (str.indexof ?x118 ?x628 ?x1327) ?x1327)))))
(check-sat)

(get-value (tmp_str0 tmp_int4 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1


