(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str8 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x1046 (str.++ tmp_str8 tmp_str8)))
 (let ((?x152 (str.to.int tmp_str2)))
 (let ((?x1823 (int.to.str tmp_int0)))
 (let ((?x2105 (str.at ?x1823 ?x152)))
 (= ?x2105 ?x1046))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str8 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str8 = 


;actual status: unknown
