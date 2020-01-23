(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (let ((?x2120 (str.replace "2" "2" tmp_str2)))
 (= ?x2120 "\n")))
(check-sat)

(get-value (tmp_str2 ))
(get-info :reason-unknown)

;tmp_str2 = \n


;actual status: sat

;model:
;String tmp_str2 = \n
