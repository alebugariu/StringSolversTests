(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int15 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x791 (int.to.str tmp_int15)))
 (let ((?x1327 (str.len tmp_str0)))
 (let ((?x1081 (str.to.int tmp_str0)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2113 (str.substr ?x118 ?x1081 ?x1327)))
 (= ?x2113 ?x791)))))))
(check-sat)

(get-value (tmp_str0 tmp_int15 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int15 = -1


;actual status: sat

;model:
;String tmp_str0 = CE!vB
;Int tmp_int15 = -39
