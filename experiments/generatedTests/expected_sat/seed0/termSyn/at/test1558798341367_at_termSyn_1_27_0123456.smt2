(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int12 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1622 (str.to.int tmp_str0)))
 (let ((?x2209 (str.++ tmp_str0 tmp_str0)))
 (let ((?x197 (str.at ?x2209 ?x1622)))
 (= ?x197 (str.substr tmp_str0 tmp_int12 tmp_int12))))))
(check-sat)

(get-value (tmp_str0 tmp_int12 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int12 = -1


