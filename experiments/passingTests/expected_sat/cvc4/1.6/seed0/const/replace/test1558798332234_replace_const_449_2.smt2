(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (let ((?x2522 (str.replace "2" "" tmp_str2)))
 (= ?x2522 """a""2")))
(check-sat)

(get-value (tmp_str2 ))
(get-info :reason-unknown)

;tmp_str2 = "a"


;actual status: sat

;model:
;String tmp_str2 = ""a""
