(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1047 (str.replace tmp_str0 "-1" "\x07")))
 (= ?x1047 "\n")))
(check-sat)

(get-value (tmp_str0 ))
(get-info :reason-unknown)

;tmp_str0 = \n


;actual status: sat
;((tmp_str0 "\n"))

;model:
;String tmp_str0 = \n
