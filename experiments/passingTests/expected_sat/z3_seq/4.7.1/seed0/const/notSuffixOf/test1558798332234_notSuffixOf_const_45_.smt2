(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x779 (str.suffixof "2" "\x07")))
 (= $x779 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
