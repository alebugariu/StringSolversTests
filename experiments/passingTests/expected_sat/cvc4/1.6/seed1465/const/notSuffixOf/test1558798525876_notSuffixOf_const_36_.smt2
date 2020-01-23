(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2430 (str.suffixof "0" """a""")))
 (= $x2430 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
