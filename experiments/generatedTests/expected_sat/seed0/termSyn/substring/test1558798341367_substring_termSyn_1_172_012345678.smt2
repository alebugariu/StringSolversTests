(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int18 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1253 (str.substr tmp_str0 tmp_int18 tmp_int18)))
 (let ((?x1327 (str.len tmp_str0)))
 (let ((?x1081 (str.to.int tmp_str0)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x326 (str.substr ?x130 ?x1081 ?x1327)))
 (= ?x326 ?x1253)))))))
(check-sat)

(get-value (tmp_str0 tmp_int18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int18 = -1


