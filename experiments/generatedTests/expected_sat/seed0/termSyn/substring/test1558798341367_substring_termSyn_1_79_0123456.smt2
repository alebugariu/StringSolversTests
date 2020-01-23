(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str14 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x385 (str.++ tmp_str14 tmp_str14)))
 (let ((?x1327 (str.len tmp_str0)))
 (let ((?x1081 (str.to.int tmp_str0)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2113 (str.substr ?x118 ?x1081 ?x1327)))
 (= ?x2113 ?x385)))))))
(check-sat)

(get-value (tmp_str0 tmp_str14 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str14 = 


