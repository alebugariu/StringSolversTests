(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x891 (str.replace tmp_str0 "a" "\n")))
 (= ?x891 """\n""")))
(check-sat)

(get-value (tmp_str0 ))
(get-info :reason-unknown)

;tmp_str0 = "a"


;actual status: sat

;model:
;String tmp_str0 = ""\n""
