(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (let ((?x2011 (str.replace "\x07" "" tmp_str2)))
 (= ?x2011 """a""\x07")))
(check-sat)

(get-value (tmp_str2 ))
(get-info :reason-unknown)

;tmp_str2 = "a"


;actual status: sat

;model:
;String tmp_str2 = ""a""
