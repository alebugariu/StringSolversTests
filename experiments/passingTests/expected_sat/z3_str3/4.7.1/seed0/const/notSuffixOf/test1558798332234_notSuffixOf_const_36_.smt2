(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x2711 (str.suffixof "0" """a""")))
 (= $x2711 false)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
