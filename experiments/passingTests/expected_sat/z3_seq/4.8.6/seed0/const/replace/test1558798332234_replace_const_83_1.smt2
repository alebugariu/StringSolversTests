(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (let ((?x1224 (str.replace """a""" tmp_str1 "\x07")))
 (= ?x1224 """\x07""")))
(check-sat)

(get-value (tmp_str1 ))
(get-info :reason-unknown)

;tmp_str1 = a


;actual status: sat
;((tmp_str1 "a"))

;model:
;String tmp_str1 = a
