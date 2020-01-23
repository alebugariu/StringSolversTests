(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x676 (str.indexof tmp_str0 "\n" 0)))
 (= ?x676 0)))
(check-sat)

(get-value (tmp_str0 ))
(get-info :reason-unknown)

;tmp_str0 = \n


;actual status: sat

;model:
;String tmp_str0 = \n\naaaaaaaaaaa!
