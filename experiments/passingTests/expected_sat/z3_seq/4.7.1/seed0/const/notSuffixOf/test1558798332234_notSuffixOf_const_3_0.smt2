(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (let (($x1554 (str.suffixof tmp_str0 "\n")))
 (= $x1554 false)))
(check-sat)

(get-value (tmp_str0 ))
(get-info :reason-unknown)

;tmp_str0 = "a"


;actual status: sat

;model:
;String tmp_str0 = \x00\n
