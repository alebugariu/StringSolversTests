(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2150 (str.indexof tmp_str0 "-1" tmp_int2)))
 (= ?x2150 0)))
(check-sat)

(get-value (tmp_str0 tmp_int2 ))
(get-info :reason-unknown)

;tmp_str0 = -1
;tmp_int2 = 0


;actual status: sat

;model:
;Int tmp_int2 = 0
;String tmp_str0 = -1\x00-1
