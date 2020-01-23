(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1035 (str.replace tmp_str0 "-1" """a""")))
 (= ?x1035 "\x07")))
(check-sat)

(get-value (tmp_str0 ))
(get-info :reason-unknown)

;tmp_str0 = 


;actual status: sat
;((tmp_str0 "\x07"))

;model:
;String tmp_str0 = \x07
