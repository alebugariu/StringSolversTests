(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1143 (str.replace tmp_str0 "2" """a""")))
 (= ?x1143 "\n")))
(check-sat)

(get-value (tmp_str0 ))
(get-info :reason-unknown)

;tmp_str0 = \n


;actual status: sat
;((tmp_str0 "\n"))

;model:
;String tmp_str0 = \n
