(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int11 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1622 (str.to.int tmp_str0)))
 (let ((?x2209 (str.++ tmp_str0 tmp_str0)))
 (let ((?x197 (str.at ?x2209 ?x1622)))
 (= ?x197 (int.to.str tmp_int11))))))
(check-sat)

(get-value (tmp_str0 tmp_int11 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int11 = -1


;actual status: sat

;model:
;Int tmp_int11 = 0
;String tmp_str0 = 0
