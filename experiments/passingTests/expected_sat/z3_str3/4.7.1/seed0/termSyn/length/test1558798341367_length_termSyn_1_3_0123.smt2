(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str7 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x644 (str.len tmp_str7)))
 (= (str.len (str.++ tmp_str0 tmp_str0)) ?x644)))
(check-sat)

(get-value (tmp_str0 tmp_str7 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str7 = -1


;actual status: sat

;model:
;String tmp_str7 = aaaE
;String tmp_str0 = aZ
