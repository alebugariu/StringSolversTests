(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (let ((?x2318 (str.replace "\x07" "0" tmp_str2)))
 (= ?x2318 "\x07")))
(check-sat)

(get-value (tmp_str2 ))
(get-info :reason-unknown)

;tmp_str2 = 


;actual status: sat
;((tmp_str2 ""))

;model:
;String tmp_str2 = 
