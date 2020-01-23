(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let (($x876 (str.suffixof "" "0")))
 (= $x876 true)))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
