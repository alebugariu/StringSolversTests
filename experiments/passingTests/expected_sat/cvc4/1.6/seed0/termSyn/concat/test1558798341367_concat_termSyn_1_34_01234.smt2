(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str8 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x1933 (str.++ tmp_str8 tmp_str8)))
 (let ((?x309 (int.to.str tmp_int0)))
 (let ((?x2573 (str.++ ?x309 ?x309)))
 (= ?x2573 ?x1933)))))
(check-sat)

(get-value (tmp_int0 tmp_str8 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str8 = 


;actual status: sat

;model:
;String tmp_str8 = 
;Int tmp_int0 = -1
