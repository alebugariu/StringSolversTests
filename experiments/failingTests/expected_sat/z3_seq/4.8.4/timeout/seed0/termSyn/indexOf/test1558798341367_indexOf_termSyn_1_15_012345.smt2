(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x1081 (str.to.int tmp_str0)))
 (let ((?x1327 (str.len tmp_str0)))
 (let ((?x129 (int.to.str tmp_int1)))
 (let ((?x972 (str.at tmp_str0 tmp_int1)))
 (let ((?x469 (str.indexof ?x972 ?x129 ?x1327)))
 (= ?x469 ?x1081)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


;actual status: timeout
