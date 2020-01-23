(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int15 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1081 (str.to.int tmp_str0)))
 (let ((?x1327 (str.len tmp_str0)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x824 (str.substr ?x118 ?x1327 ?x1081)))
 (= ?x824 (int.to.str tmp_int15)))))))
(check-sat)

(get-value (tmp_str0 tmp_int15 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int15 = -1


