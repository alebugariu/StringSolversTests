(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x667 (str.indexof tmp_str0 "\n" tmp_int2)))
 (= ?x667 0)))
(check-sat)

(get-value (tmp_str0 tmp_int2 ))
(get-info :reason-unknown)

;tmp_str0 = \n
;tmp_int2 = 0


;actual status: sat
;((tmp_str0 "\n\nai")
; (tmp_int2 0))

;model:
;Int tmp_int2 = 0
;String tmp_str0 = \n\nai
