(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x702 (str.replace tmp_str0 "" "a")))
 (= ?x702 "a\x07")))
(check-sat)

(get-value (tmp_str0 ))
(get-info :reason-unknown)

;tmp_str0 = 


;actual status: sat

;model:
;String tmp_str0 = \a
