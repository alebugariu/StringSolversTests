(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x1890 (str.suffixof "\n" "\x07")))
 (= $x1890 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
