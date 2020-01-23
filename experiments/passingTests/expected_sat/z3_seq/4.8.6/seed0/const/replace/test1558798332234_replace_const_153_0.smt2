(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x927 (str.replace tmp_str0 "\x07" """a""")))
 (= ?x927 "a")))
(check-sat)

(get-value (tmp_str0 ))
(get-info :reason-unknown)

;tmp_str0 = a


;actual status: sat
;((tmp_str0 "a"))

;model:
;String tmp_str0 = a
