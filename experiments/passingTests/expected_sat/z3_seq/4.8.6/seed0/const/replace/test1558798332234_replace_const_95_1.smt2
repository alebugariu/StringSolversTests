(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (let ((?x1272 (str.replace """a""" tmp_str1 "2")))
 (= ?x1272 """a""")))
(check-sat)

(get-value (tmp_str1 ))
(get-info :reason-unknown)

;tmp_str1 = 


;actual status: sat
;((tmp_str1 "\x00\x00\x00\x00"))

;model:
;String tmp_str1 = \x00\x00\x00\x00
