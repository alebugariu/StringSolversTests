(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x769 (str.suffixof "\x07" "a")))
 (= $x769 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
